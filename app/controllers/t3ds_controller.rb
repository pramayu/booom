class T3dsController < ApplicationController

  before_action :correct_t3d, only: [:edit, :upload, :rewrite]
  before_action :agree_t3d, only: [:rewrite]
  before_action :reject_true, only: [:upload]
  before_action :find_t3d, only: [:item, :edit, :update, :destroy, :upload, :screenshot, :upvote, :downvote, :t3d_suka, :t3d_unsuka, :delete_t3d, :rewrite, :delete_screenshot, :delete_broke, :success_reviewer, :reject_reviewer]
  before_action :signed_in_user, only: [:new, :create, :edit, :update, :upload, :upvote, :downvote, :t3d_suka, :t3d_unsuka, :delete_t3d, :rewrite, :delete_screenshot, :delete_broke, :reject_reviewer]

  layout "t3d"

  def index
    if params[:recent]
      @t3ds = T3d.all.where(agree: [true]).where(reject: [false, nil])
      @recents = T3d.all.where(agree: [true]).where(reject: [false, nil]).order('created_at desc')
    end
    if params[:recoms]
      @t3ds = T3d.all.where(agree: [true]).where(reject: [false, nil]) 
      @recoms = T3d.all.where(agree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    if params[:t3d_search].present?
      @searchs = T3d.t3d_search(params[:t3d_search]).where(agree: [true]).where(reject: [false, nil])
      @t3d_search = T3d.t3d_search(params[:t3d_search]).where(agree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    @t3ds = T3d.all.where(agree: [true]).where(reject: [false, nil])
    @recents = T3d.all.where(agree: [true]).where(reject: [false, nil]).order('created_at desc').limit(8)
    @recoms = T3d.all.where(agree: [true]).where(reject: [false, nil]).order('sell desc').limit(8)
    @vacancies = Vacancy.all.order('RANDOM()').limit(8)
    @frees = Freeitem.all.order('created_at desc')
  end

  def item
    @comments = Comment.where(t3d_id: @t3d)
    @reviews = Review.where(t3d_id: @t3d).order('created_at desc')
    if @reviews.blank?
      @avg_rev = 0
    else
      @avg_rev = @reviews.average(:rating).round(2)
    end
    @random_t3ds = T3d.all.where(user_id: @t3d.user.id).where.not(id: @t3d.id).order("created_at").limit(4)
  end

  def new
    @t3d = current_user.t3ds.build
    @categories = Category.all.where('to_item = ?', 'tigad')
  end

  def create
    @t3d = current_user.t3ds.build(t3d_params)
    if @t3d.save
      redirect_to upload_t3d_path(@t3d)
    else
      render 'new'
    end
  end

  def upload
    @genre = Genre.all.order('name')
    @includes = Include.all.where(id: [37..56])
    @plugin = Include.all.where(id: [57..61])
    @texture = Include.all.where(id: [3..4, 27..29, 62..64])
    @geometry = Geometry.all.order('name')
    @apelokate = @t3d.category.subcategories.order('created_at asc')
    @ositems = Ositem.all
    @softopen3ds = Softopen3d.all.order('name')
  end

  def screenshot
    render layout: false
  end

  def update
    if @t3d.update(t3d_params)
      if @t3d.agree == false || @t3d.agree == nil
        respond_to do |format|
          format.html {redirect_to pending_approv_path(current_user)}
          format.js
        end
      elsif @t3d.agree == true || @t3d.agree.nil?
        respond_to do |format|
          format.html {redirect_to item_product_path(current_user)}
          format.js
        end
      elsif @t3d.reject == true || @t3d.reject.nil?
        respond_to do |format|
          format.html {redirect_to item_reject_path(current_user)}
          format.js
        end
      else
        respond_to do |format|
          format.html {redirect_to t3ds_path}
          format.js
        end
      end
    else
      render 'upload'
    end
  end

  def upvote
    if @t3d.liked_by current_user
      create_notification(@t3d)
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def downvote
    if @t3d.disliked_by current_user
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def t3d_suka
    current_user.akusuka.t3ds << @t3d
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  def t3d_unsuka
    current_user.akusuka.t3ds.delete(@t3d)
  end

  def delete_t3d
    current_user.t3ds.destroy(@t3d)
  end

  def rewrite
    @genre = Genre.all.order('name')
    @includes = Include.all.where(id: [37..56])
    @plugin = Include.all.where(id: [57..61])
    @texture = Include.all.where(id: [3..4, 27..29, 62..64])
    @geometry = Geometry.all.order('name')
    @apelokate = @t3d.category.subcategories.order('created_at asc')
    @ositems = Ositem.all
    @softopen3ds = Softopen3d.all.order('name')
  end

  def free_t3d
    @t3d = T3d.find(params[:id])
    Freeitem.create(t3d_id: @t3d.id)
    respond_to do |format|
      format.js
    end
  end

  def delete_screenshot
    @screenshot = Screenshot.find(params[:screenshot_id])
    @t3d.screenshots.destroy(@screenshot)
    respond_to do |format|
      format.js
    end
  end

  def delete_broke
    @broke = Broke.find(params[:broke_id])
    @t3d.brokes.destroy(@broke)
    respond_to do |format|
      format.js
    end
  end

  def success_reviewer
    Notification.create(user_id: @t3d.user.id,
                        notified_by_id: current_user.id,
                        t3d_id: @t3d.id,
                        notice_type: 'approv')
  end

  def reject_reviewer
    Notification.create(user_id: @t3d.user.id,
                        notified_by_id: current_user.id,
                        t3d_id: @t3d.id,
                        notice_type: 'reject')
  end

  def t3d_category
    if params[:subcategory].nil?
      @category = Category.where(:slug => params[:category]).first
      if params[:search].present? || params[:min].present? || params[:max].present?
        @t3ds = @category.t3ds.where(:agree => [true]).search(params)
        @minprice = @t3ds.minimum(:price)
        @maxprice = @t3ds.maximum(:price)
      else
        @t3ds = @category.t3ds.where(:agree => [true])
        @minprice = @t3ds.minimum(:price)
        @maxprice = @t3ds.maximum(:price)
      end
    elsif params[:subcategory].present?
      @category = Category.where(:slug => params[:category]).first
      @subcategory = Subcategory.where(:slug =>params[:subcategory]).first
      if params[:search].present? || params[:min].present? || params[:max].present?
        @t3ds = @subcategory.t3ds.where(:agree => [true]).search(params)
        @minprice = @t3ds.minimum(:price)
        @maxprice = @t3ds.maximum(:price)
      else
        @t3ds = @subcategory.t3ds.where(:agree => [true])
        @minprice = @t3ds.minimum(:price)
        @maxprice = @t3ds.maximum(:price)
      end
    end
  end

  def delete_by_admin
    @t3d = T3d.find(params[:id])
    @t3d.destroy
  end

  private

  def t3d_params
    params.require(:t3d).permit(:name, :description, :slug, :url_demo, :video_demo, :reject, :note, :modelsub_id, :genre_id, :price, :price_ext, :agree, :geometry_id, :category_id, :animated, :low_poly, :material, :rigged, :texture, :uv_mapped, :unwrapped_uvs, :bitmap_texture, :procedural_texture, :tileable, :layered, :resolution, :polygons_count, :vertices_count, :thumbnail, :tag_list, subcategory_ids: [], include_ids:[], ositem_ids:[], screenshots_attributes: [:screenshot], brokes_attributes: [:resources], collection_ids: [], softopen3d_ids:[], revrest_attributes: [:content, :_destroy])
  end

  def find_t3d
    @t3d = T3d.find_by_slug!(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to :controller => "t3ds", :action => "index"
  end

  def agree_t3d
    @t3d = T3d.find_by_slug!(params[:id])
    if @t3d.agree == false || @t3d.agree == nil || @t3d.reject == true || @t3d.reject.nil?
      redirect_to dashboard_url
    end
  end

  def reject_true
    @t3d = T3d.find_by_slug!(params[:id])
    if  @t3d.reject == true || @t3d.reject.nil?
      redirect_to item_reject_path(current_user)
    end
  end

  def create_notification(t3d)
    return if t3d.user.id == current_user.id
    Notification.create(user_id: t3d.user.id,
                        notified_by_id: current_user.id,
                        t3d_id: t3d.id,
                        notice_type: 'lik')
  end
end
