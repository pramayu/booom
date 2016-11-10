class GraphicsController < ApplicationController

  before_action :correct_graphic, only: [:edit, :upload, :rewrite]
  before_action :signed_in_user, only: [:new, :create, :edit, :update, :upload, :upvote, :downvote, :graphic_suka, :graphic_unsuka, :delete_graphic, :rewrite, :delete_screenshot, :delete_broke, :reject_reviewer]
  before_action :find_graph, only: [:item, :edit, :update, :destroy, :upload, :screenshot, :upvote, :downvote, :graphic_suka, :graphic_unsuka, :delete_graphic, :rewrite, :delete_screenshot, :delete_broke, :success_reviewer, :reject_reviewer]
  before_action :agree_graphic, only: [:rewrite]
  before_action :reject_true, only: [:upload]

  layout "graphics"
  layout false, only: [:screenshot]

  def index
    if params[:recent]
      @graphics = Graphic.all.where(agree: [true]).where(reject: [false, nil])
      @recents = Graphic.all.where(agree: [true]).where(reject: [false, nil]).order('created_at desc')
    end
    if params[:recoms]
      @graphics = Graphic.all.where(agree: [true]).where(reject: [false, nil])
      @recoms = Graphic.all.where(agree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    if params[:graphic_search].present?
      @searchs = Graphic.graphic_search(params[:graphic_search]).where(agree: [true]).where(reject: [false, nil])
      @graphic_search = Graphic.graphic_search(params[:graphic_search]).where(agree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    @graphics = Graphic.all.where(agree: [true]).where(reject: [false, nil])
    @recents = Graphic.all.where(agree: [true]).where(reject: [false, nil]).order('created_at desc').limit(8)
    @recoms = Graphic.all.where(agree: [true]).where(reject: [false, nil]).order('sell desc').limit(8)
    @vacancies = Vacancy.all.order('RANDOM()').limit(8)
    @frees = Freeitem.all.order('created_at desc')
  end

  def item
    @comments = Comment.where(graphic_id: @graphic)
    @reviews = Review.where(graphic_id: @graphic).order('created_at desc')
    if @reviews.blank?
      @avg_rev = 0
    else
      @avg_rev = @reviews.average(:rating).round(2)
    end
    @random_graphics = Graphic.all.where(user_id: @graphic.user.id).where.not(id: @graphic.id).order("created_at").limit(4)
  end

  def new
    @graphic = current_user.graphics.build
    @categories = Category.all.where('to_item = ?', 'graphic')
  end

  def create
    @graphic = current_user.graphics.build(graph_params)
    if @graphic.save
      redirect_to upload_graphic_path(@graphic)
    else
      render 'new'
    end
  end

  def upload
    @softopens = Softopen.all
    @includes = Include.all.where(id: [3..4, 27..36])
  end

  def screenshot

  end

  def update
    if @graphic.update(graph_params)
      if @graphic.agree == false || @graphic.agree == nil
        respond_to do |format|
          format.html {redirect_to pending_approv_path(current_user)}
          format.js
        end
      elsif @graphic.agree == true || @graphic.agree.nil?
        respond_to do |format|
          format.html {redirect_to item_product_path(current_user)}
          format.js
        end
      elsif @graphic.reject == true || @graphic.reject.nil?
        respond_to do |format|
          format.html {redirect_to item_reject_path(current_user)}
          format.js
        end
      else
        respond_to do |format|
          format.html {redirect_to graphics_path}
          format.js
        end
      end
    else
      render 'upload'
    end
  end

  def upvote
    if @graphic.liked_by current_user
      create_notification(@graphic)
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def downvote
    if @graphic.disliked_by current_user
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def graphic_suka
    current_user.akusuka.graphics << @graphic
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  def graphic_unsuka
    current_user.akusuka.graphics.delete(@graphic)
  end

  def delete_graphic
    current_user.graphics.destroy(@graphic)
  end

  def rewrite
    @softopens = Softopen.all
    @includes = Include.all.where(id: [3..4, 27..36])
  end

  def free_graphic
    @graphic = Graphic.find(params[:id])
    Freeitem.create(graphic_id: @graphic.id)
    respond_to do |format|
      format.js
    end
  end

  def delete_screenshot
    @screenshot = Screenshot.find(params[:screenshot_id])
    @graphic.screenshots.destroy(@screenshot)
    respond_to do |format|
      format.js
    end
  end

  def delete_broke
    @broke = Broke.find(params[:broke_id])
    @graphic.brokes.destroy(@broke)
    respond_to do |format|
      format.js
    end
  end

  def success_reviewer
    Notification.create(user_id: @graphic.user.id,
                        notified_by_id: current_user.id,
                        graphic_id: @graphic.id,
                        notice_type: 'approv')
  end

  def reject_reviewer
    Notification.create(user_id: @graphic.user.id,
                        notified_by_id: current_user.id,
                        graphic_id: @graphic.id,
                        notice_type: 'reject')
  end

  def graphic_category
    if params[:subcategory].nil?
      @category = Category.where(:slug => params[:category]).first
      if params[:search].present? || params[:min].present? || params[:max].present?
        @graphics = @category.graphics.where(:agree => [true]).search(params)
        @minprice = @graphics.minimum(:price)
        @maxprice = @graphics.maximum(:price)
      else
        @graphics = @category.graphics.where(:agree => [true])
        @minprice = @graphics.minimum(:price)
        @maxprice = @graphics.maximum(:price)
      end
    elsif params[:subcategory].present?
      @category = Category.where(:slug => params[:category]).first
      @subcategory = Subcategory.where(:slug =>params[:subcategory]).first
      if params[:search].present? || params[:min].present? || params[:max].present?
        @graphics = @subcategory.graphics.where(:agree => [true]).search(params)
        @minprice = @graphics.minimum(:price)
        @maxprice = @graphics.maximum(:price)
      else
        @graphics = @subcategory.graphics.where(:agree => [true])
        @minprice = @graphics.minimum(:price)
        @maxprice = @graphics.maximum(:price)
      end
    end
  end

  def delete_by_admin
    @graphic = Graphic.find(params[:id])
    @graphic.destroy
  end

  private

  def graph_params
    params.require(:graphic).permit(:name, :description, :slug, :url_demo, :price, :reject, :price_ext, :agree, :video_demo, :note, :softopen_id, :category_id, :thumbnail, :tag_list, subcategory_ids: [], include_ids:[],  screenshots_attributes: [:screenshot], brokes_attributes: [:resources], collection_ids: [], industry_ids: [], revrest_attributes: [:id, :content, :graphic_id, :_destroy])
  end

  def find_graph
    @graphic = Graphic.find_by_slug!(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to :controller => "graphics", :action => "index"
  end

  def agree_graphic
    @graphic = Graphic.find_by_slug!(params[:id])
    if @graphic.agree == false || @graphic.agree == nil || @graphic.reject == true || @graphic.reject.nil?
      redirect_to dashboard_url
    end
  end

  def reject_true
    @graphic = Graphic.find_by_slug!(params[:id])
    if  @graphic.reject == true || @graphic.reject.nil?
      redirect_to item_reject_path(current_user)
    end
  end

  def create_notification(graphic)
    return if graphic.user.id == current_user.id
    Notification.create(user_id: graphic.user.id,
                        notified_by_id: current_user.id,
                        graphic_id: graphic.id,
                        notice_type: 'lik')
  end
end
