class FontsController < ApplicationController

  before_action :correct_font, only: [:edit, :rewrite]
  before_action :reject_true, only: [:edit]
  before_action :agree_font, only: [:rewrite]
  before_action :signed_in_user, only: [:new, :create, :edit, :update, :upvote, :downvote, :font_suka, :font_unsuka, :delete_font, :rewrite, :delete_screenshot, :delete_broke, :reject_reviewer, :free_font]
  before_action :find_font, only: [:item, :edit, :update, :destroy, :screenshot, :upvote, :downvote, :font_suka, :font_unsuka, :delete_font, :rewrite, :delete_screenshot, :delete_broke, :success_reviewer, :reject_reviewer]

  layout "fonts"

  def index
    if params[:recent]
      @fonts = Font.all.where(agree: [true]).where(reject: [false, nil])
      @recents = Font.all.where(agree: [true]).where(reject: [false, nil]).order('created_at desc')
    end
    if params[:recoms]
      @fonts = Font.all.where(agree: [true]).where(reject: [false, nil])
      @recoms = Font.all.where(agree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    if params[:font_search].present?
      @searchs = Font.font_search(params[:font_search]).where(agree: [true]).where(reject: [false, nil])
      @font_search = Font.font_search(params[:font_search]).where(agree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    @fonts = Font.all.where(agree: [true]).where(reject: [false, nil])
    @recents = Font.all.where(agree: [true]).where(reject: [false, nil]).order('created_at desc').limit(8)
    @recoms = Font.all.where(agree: [true]).where(reject: [false, nil]).order('sell desc').limit(8)
    @vacancies = Vacancy.all.order('RANDOM()').limit(8)
    @frees = Freeitem.all.order('created_at desc')
  end

  def item
    @comments = Comment.where(font_id: @font)
    @reviews = Review.where(font_id: @font).order('created_at desc')
    if @reviews.blank?
      @avg_rev = 0
    else
      @avg_rev = @reviews.average(:rating).round(2)
    end
    @random_fonts = Font.all.where(user_id: @font.user.id).where.not(id: @font.id).order("created_at").limit(4)
  end

  def new
    @font = current_user.fonts.build
    @categories = Category.all.where('to_item = ?', 'font').order('name')
    @industries = Industry.all.order('name')
    @includes = Include.all.where(id: 70..122).order('name asc')
  end

  def create
    @font = current_user.fonts.build(font_params)
    if @font.save
      redirect_to item_font_path(@font)
    else
      render 'new'
    end
  end

  def screenshot
    render layout: false
  end

  def edit

  end

  def update
    if @font.update(font_params)
      if @font.agree == false || @font.agree == nil
        respond_to do |format|
          format.html {redirect_to pending_approv_path(current_user)}
          format.js
        end
      elsif @font.agree == true || @font.agree.nil?
        respond_to do |format|
          format.html {redirect_to item_product_path(current_user)}
          format.js
        end
      elsif @font.reject == true || @font.reject.nil?
        respond_to do |format|
          format.html {redirect_to item_reject_path(current_user)}
          format.js
        end
      else
        respond_to do |format|
          format.html {redirect_to fonts_path}
          format.js
        end
      end
    else
      render 'edit'
    end
  end

  def upvote
    if @font.liked_by current_user
      create_notification(@font)
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def downvote
    if @font.disliked_by current_user
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def font_suka
    current_user.akusuka.fonts << @font
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  def font_unsuka
    current_user.akusuka.fonts.delete(@font)
  end

  def delete_font
    current_user.fonts.destroy(@font)
  end

  def rewrite
    @categories = Category.all.where(id: 1057..1071).order('name')
    @industries = Industry.all.order('name')
    @includes = Include.all.where(id: 70..122).order('name asc')
  end

  def delete_screenshot
    @screenshot = Screenshot.find(params[:screenshot_id])
    @font.screenshots.destroy(@screenshot)
    respond_to do |format|
      format.js
    end
  end

  def free_font
    @font = Font.find(params[:id])
    Freeitem.create(font_id: @font.id)
    respond_to do |format|
      format.js
    end
  end

  def delete_broke
    @broke = Broke.find(params[:broke_id])
    @font.brokes.destroy(@broke)
    respond_to do |format|
      format.js
    end
  end

  def success_reviewer
    Notification.create(user_id: @font.user.id,
                        notified_by_id: current_user.id,
                        font_id: @font.id,
                        notice_type: 'approv')
  end

  def reject_reviewer
    Notification.create(user_id: @font.user.id,
                        notified_by_id: current_user.id,
                        font_id: @font.id,
                        notice_type: 'reject')
  end

  def font_category
    @industries = Industry.all
    if params[:industry].nil?
      @category = Category.where(:slug => params[:category]).first
      if params[:search].present? || params[:min].present? || params[:max].present?
        @fonts = @category.fonts.where(agree: [true]).search(params)
        @minprice = @fonts.minimum(:price)
        @maxprice = @fonts.maximum(:price)
      else
        @fonts = @category.fonts.where(agree: [true])
        @minprice = @fonts.minimum(:price)
        @maxprice = @fonts.maximum(:price)
      end
    elsif params[:industry].present?
      @category = Category.where(:slug => params[:category]).first
      @industry = Industry.where(:slug => params[:industry]).first
      if params[:search].present? || params[:min].present? || params[:max].present?
        @fonts = @industry.fonts.where(:agree => [true]).search(params)
        @minprice = @fonts.minimum(:price)
        @maxprice = @fonts.maximum(:price)
      else
        @fonts = @industry.fonts.where(:agree => [true])
        @minprice = @fonts.minimum(:price)
        @maxprice = @fonts.maximum(:price)
      end
    end
  end

  def delete_by_admin
    @font = Font.find(params[:id])
    @font.destroy
  end

  private

  def font_params
    params.require(:font).permit(:name, :description, :slug, :note, :price, :reject, :price_ext, :agree, :file_size, :vector, :category_id, :thumbnail, :tag_list, include_ids:[], industry_ids:[], screenshots_attributes: [:screenshot], brokes_attributes: [:resources], collection_ids: [], revrest_attributes: [:id, :content, :theme_id, :_destroy])
  end

  def find_font
    @font = Font.find_by_slug!(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to :controller => "fonts", :action => "index"
  end

  def agree_font
    @font = Font.find_by_slug!(params[:id])
    if @font.agree == false || @font.agree == nil || @font.reject == true || @font.reject.nil?
      redirect_to dashboard_url
    end
  end

  def reject_true
    @font = Font.find_by_slug!(params[:id])
    if  @font.reject == true || @font.reject.nil?
      redirect_to item_reject_path(current_user)
    end
  end

  def create_notification(font)
    return if font.user.id == current_user.id
    Notification.create(user_id: font.user.id,
                        notified_by_id: current_user.id,
                        font_id: font.id,
                        notice_type: 'lik')
  end
end
