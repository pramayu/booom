class VideofxesController < ApplicationController

  before_action :correct_video, only: [:edit, :upload, :rewrite]
  before_action :agree_video, only: [:rewrite]
  before_action :reject_true, only: [:upload]
  before_action :find_video, only: [:item, :edit, :update, :destroy, :upload, :screenshot, :upvote, :downvote, :video_suka, :video_unsuka, :delete_videofx, :rewrite, :delete_videm, :delete_broke, :success_reviewer, :reject_reviewer]
  before_action :signed_in_user, only: [:new, :create, :edit, :update, :upload, :upvote, :downvote, :video_suka, :video_unsuka, :delete_videofx, :rewrite, :delete_videm, :delete_broke, :reject_reviewer, :free_videofx]

  layout "videofxes"

  def index
    if params[:recent]
      @videos = Videofx.all.where(agree: [true]).where(reject: [false, nil])
      @recents = Videofx.all.where(agree: [true]).where(reject: [false, nil]).order('created_at desc')
    end
    if params[:recoms]
      @videos = Videofx.all.where(agree: [true]).where(reject: [false, nil])
      @recoms = Videofx.all.where(agree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    if params[:videofx_search].present?
      @searchs = Videofx.videofx_search(params[:videofx_search]).where(agree: [true]).where(reject: [false, nil])
      @videofx_search = Videofx.videofx_search(params[:videofx_search]).where(agree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    @videos = Videofx.all.where(agree: [true]).where(reject: [false, nil])
    @recents = Videofx.all.where(agree: [true]).where(reject: [false, nil]).order('created_at desc').limit(8)
    @recoms = Videofx.all.where(agree: [true]).where(reject: [false, nil]).order('sell desc').limit(8)
    @vacancies = Vacancy.all.order('RANDOM()').limit(8)
    @frees = Freeitem.all.order('created_at desc')
  end

  def item
    @comments = Comment.where(videofx_id: @video)
    @reviews = Review.where(videofx_id: @video).order('created_at desc')
    if @reviews.blank?
      @avg_rev = 0
    else
      @avg_rev = @reviews.average(:rating).round(2)
    end
    @random_videos = Videofx.all.where(user_id: @video.user.id).where.not(id: @video.id).order("created_at").limit(4)
  end

  def new
    @video = current_user.videofxes.build
    @categories = Category.all.where('to_item = ?', 'video')
  end

  def create
    @video = current_user.videofxes.build(video_params)
    if @video.save
      redirect_to upload_videofx_path(@video)
    else
      render 'new'
    end
  end

  def upload
    @after_effects = Softopen.all.where(id: 1..8).order('name')
    @apple_motions = Softopen.all.where(id: 16..17).order('name')
    @includes = Include.all.where(id: 65..69)
    @encodes = Encode.all.order('name')
    @latars = Latar.all.order('name')
  end

  def screenshot
    render layout: false
  end

  def update
    if @video.update(video_params)
      if @video.agree == false || @video.agree == nil
        respond_to do |format|
          format.html {redirect_to pending_approv_path(current_user)}
          format.js
        end
      elsif @video.agree == true || @video.agree.nil?
        respond_to do |format|
          format.html {redirect_to item_product_path(current_user)}
          format.js
        end
      elsif @video.reject == true || @video.reject.nil?
        respond_to do |format|
          format.html {redirect_to item_reject_path(current_user)}
          format.js
        end
      else
        respond_to do |format|
          format.html {redirect_to videofxes_path}
          format.js
        end
      end
    else
      render 'upload'
    end
  end

  def upvote
    if @video.liked_by current_user
      create_notification(@video)
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def downvote
    if @video.disliked_by current_user
      respond_to do |format|
        format.html { rendirect_to :back }
        format.js
      end
    end
  end

  def video_suka
    current_user.akusuka.videofxes << @video
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  def video_unsuka
    current_user.akusuka.videofxes.delete(@video)
  end

  def delete_videofx
    current_user.videofxes.destroy(@video)
  end

  def rewrite
    @after_effects = Softopen.all.where(id: 1..8).order('name')
    @apple_motions = Softopen.all.where(id: 16..17).order('name')
    @includes = Include.all.where(id: 65..69)
    @encodes = Encode.all.order('name')
    @latars = Latar.all.order('name')
  end

  def delete_videm
    @videm = Videm.find(params[:videm_id])
    @video.videms.destroy(@videm)
    respond_to do |format|
      format.js
    end
  end

  def delete_broke
    @broke = Broke.find(params[:broke_id])
    @video.brokes.destroy(@broke)
    respond_to do |format|
      format.js
    end
  end

  def success_reviewer
    Notification.create(user_id: @video.user.id,
                        notified_by_id: current_user.id,
                        videofx_id: @video.id,
                        notice_type: 'approv')
  end

  def reject_reviewer
    Notification.create(user_id: @video.user.id,
                        notified_by_id: current_user.id,
                        videofx_id: @video.id,
                        notice_type: 'reject')
  end

  def free_videofx
    @videofx = Videofx.find(params[:id])
    Freeitem.create(videofx_id: @videofx.id)
    respond_to do |format|
      format.js
    end
  end

  def videofx_category
    if params[:subcategory].nil?
      @category = Category.where(:slug => params[:category]).first
      if params[:search].present? || params[:min].present? || params[:max].present?
        @videofxes = @category.videofxes.where(:agree => [true]).search(params)
        @minprice = @videofxes.minimum(:price)
        @maxprice = @videofxes.maximum(:price)
      else
        @videofxes = @category.videofxes.where(:agree => [true])
        @minprice = @videofxes.minimum(:price)
        @maxprice = @videofxes.maximum(:price)
      end
    elsif params[:subcategory].present?
      @category = Category.where(:slug => params[:category]).first
      @subcategory = Subcategory.where(:slug =>params[:subcategory]).first
      if params[:search].present? || params[:min].present? || params[:max].present?
        @videofxes = @subcategory.videofxes.where(:agree => [true]).search(params)
        @minprice = @videofxes.minimum(:price)
        @maxprice = @videofxes.maximum(:price)
      else
        @videofxes = @subcategory.videofxes.where(:agree => [true])
        @minprice = @videofxes.minimum(:price)
        @maxprice = @videofxes.maximum(:price)
      end
    end
  end

  def delete_by_admin
    @video = Videofx.find(params[:id])
    @video.destroy
  end

  private

  def video_params
    params.require(:videofx).permit(:name, :description, :slug, :url_demo, :reject, :price, :price_ext, :agree, :video_demo, :note, :duration, :resolution, :looped_video, :alpha_channel, :source_audio, :file_size, :require_plugin, :encode_id, :latar_id, :softopen_id, :vidsub_id, :category_id, :thumbnail, :tag_list, subcategory_ids: [], include_ids:[], framerate_ids:[], aeplugin_ids:[], screenshots_attributes: [:screenshot], brokes_attributes: [:resources], videms_attributes: [:trailer], revrest_attributes: [:content, :_destroy])
  end

  def find_video
    @video = Videofx.find_by_slug!(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to :back	
  end

  def agree_video
    @video = Videofx.find_by_slug!(params[:id])
    if @video.agree == false || @video.agree == nil || @video.reject == true || @video.reject.nil?
      redirect_to dashboard_url
    end
  end

  def reject_true
    @video = Videofx.find_by_slug!(params[:id])
    if  @video.reject == true || @video.reject.nil?
      redirect_to item_reject_path(current_user)
    end
  end

  def create_notification(videofx)
    return if videofx.user.id == current_user.id
    Notification.create(user_id: videofx.user.id,
                        notified_by_id: current_user.id,
                        videofx_id: videofx.id,
                        notice_type: 'lik')
  end

end
