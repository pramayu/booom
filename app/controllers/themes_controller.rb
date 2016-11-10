class ThemesController < ApplicationController

  before_action :correct_post, only: [:edit, :upload, :rewrite]
  before_action :agree_theme, only: [:rewrite]
  before_action :reject_true, only: [:upload]
  before_action :signed_in_user, only: [:new, :create, :edit, :update, :upload, :upvote, :downvote, :theme_suka, :theme_unsuka, :delete_theme, :rewrite, :delete_screenshot, :delete_broke, :success_reviewer, :reject_reviewer, :free_theme]
  before_action :find_theme, only: [:item, :edit, :update, :destroy, :upload, :screenshot, :upvote, :downvote, :theme_suka, :theme_unsuka, :delete_theme, :rewrite, :delete_screenshot, :delete_broke, :success_reviewer, :reject_reviewer]
  before_action :find_category
  before_action :set_only_admin, only: [:delete_by_admin, :free_theme]
  before_action :find_by_id_s, only: [:delete_by_admin, :free_theme]

  layout "themes"
  layout false, only: [:screenshot]

  def index
    if params[:recent]
      @themes = Theme.all.where(aggree: [true]).where(reject: [false, nil])
      @recents = Theme.all.where(aggree: [true]).where(reject: [false, nil]).order('created_at desc')
    end
    if params[:recoms]
      @themes = Theme.all.where(aggree: [true]).where(reject: [false, nil])
      @recoms = Theme.all.where(aggree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    if params[:theme_search].present?
      @searchs = Theme.theme_search(params[:theme_search]).where(aggree: [true]).where(reject: [false, nil])
      @theme_search = Theme.theme_search(params[:theme_search]).where(aggree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    @vacancies = Vacancy.all.order('RANDOM()').limit(8)
    @themes = Theme.all.where(aggree: [true]).where(reject: [false, nil])
    @recents = Theme.all.where(aggree: [true]).where(reject: [false, nil]).order('created_at desc').limit(8)
    @recoms = Theme.all.where(aggree: [true]).where(reject: [false, nil]).order('sell desc').limit(8)
    #@recoms = Theme.joins('LEFT OUTER JOIN line_items on line_items.theme_id = themes.id').group('theme_id').order('count(theme_id) desc').count('theme_id')
    @frees = Freeitem.all.order('created_at desc')
  end

  def item
    @comments = Comment.where(theme_id: @theme)
    @reviews = Review.where(theme_id: @theme).order('created_at desc')
    if @reviews.blank?
      @avg_rev = 0
    else
      @avg_rev = @reviews.average(:rating).round(2)
    end
    @random_themes = Theme.all.where(user_id: @theme.user.id).where.not(id: @theme.id).order("created_at").limit(4)
  end

  def new
    @theme = current_user.themes.build
    @categories = Category.all.where('to_item = ?', 'theme')
  end

  def create
    @theme = current_user.themes.build(theme_params)
    if @theme.save
      redirect_to upload_path(@theme)
    else
      render new
    end
  end

  def edit

  end

  def upload
    @includes = Include.all.where(id: 1..8)
    @dependencies = Dependency.all
  end

  def screenshot

  end

  def update
    if @theme.update(theme_params)
      if @theme.aggree == false || @theme.aggree == nil
        respond_to do |format|
          format.html {redirect_to pending_approv_path(current_user)}
          format.js
        end
      elsif @theme.aggree == true || @theme.aggree.nil?
        respond_to do |format|
          format.html {redirect_to item_product_path(current_user)}
          format.js
        end
      elsif @theme.reject == true || @theme.reject.nil?
        respond_to do |format|
          format.html {redirect_to item_reject_path(current_user)}
          format.js
        end
      else
        respond_to do |format|
          format.html {redirect_to themes_path}
          format.js
        end
      end
    else
      render 'upload'
    end
  end

  def upvote
    if @theme.liked_by current_user
      create_notification(@theme)
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def rewrite
    @includes = Include.all.where(id: 1..8)
    @dependencies = Dependency.all
    if @theme.aggree == false
      redirect_to pending_approv_path(current_user)
    end
  end

  def delete_screenshot
    @screenshot = Screenshot.find(params[:screenshot_id])
    @theme.screenshots.destroy(@screenshot)
    respond_to do |format|
      format.js
    end
  end

  def delete_broke
    @broke = Broke.find(params[:broke_id])
    @theme.brokes.destroy(@broke)
    respond_to do |format|
      format.js
    end
  end

  def downvote
    if @theme.disliked_by current_user
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def theme_suka
    current_user.akusuka.themes << @theme
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  def theme_unsuka
    current_user.akusuka.themes.delete(@theme)
  end

  def delete_theme
    current_user.themes.destroy(@theme)
  end
  
  def delete_by_admin
    @theme.destroy
  end

  def success_reviewer
    Notification.create(user_id: @theme.user.id,
                        notified_by_id: current_user.id,
                        theme_id: @theme.id,
                        notice_type: 'approv')
  end

  def reject_reviewer
    Notification.create(user_id: @theme.user.id,
                        notified_by_id: current_user.id,
                        theme_id: @theme.id,
                        notice_type: 'reject')
  end

  def theme_category
    if params[:subcategory].nil?
      @category = Category.where(:slug => params[:category]).first
      if params[:search].present? || params[:min].present? || params[:max].present? || params[:fixed].present? || params[:liquid].present? || params[:responsive].present?
        @themes = @category.themes.where(:aggree => [true]).search(params)
        @minprice = @themes.minimum(:price)
        @maxprice = @themes.maximum(:price)
      else
        @themes = @category.themes.where(:aggree => [true])
        @minprice = @themes.minimum(:price)
        @maxprice = @themes.maximum(:price)
      end
    elsif params[:subcategory].present?
      @category = Category.where(:slug => params[:category]).first
      @subcategory = Subcategory.where(:slug =>params[:subcategory]).first
      if params[:search].present? || params[:min].present? || params[:max].present? || params[:fixed].present? || params[:liquid].present? || params[:responsive].present?
        @themes = @subcategory.themes.where(:aggree => [true]).search(params)
        @minprice = @themes.minimum(:price)
        @maxprice = @themes.maximum(:price)
      else
        @themes = @subcategory.themes.where(:aggree => [true])
        @minprice = @themes.minimum(:price)
        @maxprice = @themes.maximum(:price)
      end
    end
  end

  def free_theme
    Freeitem.create(theme_id: @theme.id)
    respond_to do |format|
      format.js
    end
  end

  private

  def theme_params
    params.require(:theme).permit(:name, :description, :column, :layout, :slug, :reject, :aggree, :url_demo, :note, :price, :price_ext, :dependency_id, :category_id, :thumbnail, :tag_list, subcategory_ids: [], browser_ids: [], include_ids:[], compatible_ids: [], screenshots_attributes: [:screenshot], brokes_attributes: [:resources], collection_ids: [], revrest_attributes: [:id, :content, :theme_id, :_destroy])
  end

  def find_theme
    @theme = Theme.find_by_slug!(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to :controller => "themes", :action => "index"
  end
  def agree_theme
    @theme = Theme.find_by_slug!(params[:id])
    if @theme.aggree == false || @theme.aggree == nil || @theme.reject == true || @theme.reject.nil?
      redirect_to dashboard_url
    end
  end

  def reject_true
    @theme = Theme.find_by_slug!(params[:id])
    if  @theme.reject == true || @theme.reject.nil?
      redirect_to item_reject_path(current_user)
    end
  end
  def find_category
    @category = Category.find_by_id(params[:category_id])
  end

  def create_notification(theme)
    return if theme.user.id == current_user.id
    Notification.create(user_id: theme.user.id,
                        notified_by_id: current_user.id,
                        theme_id: theme.id,
                        notice_type: 'lik')
  end

  def set_only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def find_by_id_s
    @theme = Theme.find(params[:id])
  end
end
