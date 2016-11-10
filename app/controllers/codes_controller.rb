class CodesController < ApplicationController
  before_action :correct_code, only: [:edit, :upload, :rewrite]
  before_action :agree_code, only: [:rewrite]
  before_action :reject_true, only: [:upload]
  before_action :signed_in_user, only: [:new, :create, :edit, :update, :upload, :upvote, :downvote, :code_suka, :code_unsuka, :delete_code, :rewrite, :delete_screenshot, :delete_broke, :reject_reviewer, :free_code]
  before_action :find_code, only: [:item, :edit, :update, :destroy, :upload, :upvote, :downvote, :screenshot, :code_suka, :code_unsuka, :delete_code, :rewrite, :delete_screenshot, :delete_broke, :success_reviewer, :reject_reviewer]
  before_action :set_only_admin, only: [:delete_by_admin, :free_code]

  layout "codes"
  layout false, only: [:screenshot]

  def index
    if params[:recent]
      @codes = Code.all.where(agree: [true]).where(reject: [false, nil])
      @recents = Code.all.where(agree: [true]).where(reject: [false, nil]).order('created_at desc')
    end
    if params[:recoms]
      @codes = Code.all.where(agree: [true]).where(reject: [false, nil])
      @recoms = Code.all.where(agree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    if params[:code_search].present?
      @searchs = Code.code_search(params[:code_search]).where(agree: [true]).where(reject: [false, nil])
      @code_search = Code.code_search(params[:code_search]).where(agree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    @codes = Code.all.where(agree: [true]).where(reject: [false, nil])
    @recents = Code.all.where(agree: [true]).where(reject: [false, nil]).order('created_at desc').limit(8)
    @recoms = Code.all.where(agree: [true]).where(reject: [false, nil]).order('sell desc').limit(8)
    @vacancies = Vacancy.all.order('RANDOM()').limit(8)
    @frees = Freeitem.all.order('created_at desc')
  end 

  def item
    @comments = Comment.where(code_id: @code)
    @reviews = Review.where(code_id: @code).order('created_at desc')
    if @reviews.blank?
      @avg_rev = 0
    else
      @avg_rev = @reviews.average(:rating).round(2)
    end
    @random_codes = Code.all.where(user_id: @code.user.id).where.not(id: @code.id).order("created_at").limit(4)
  end

  def new
    @code = current_user.codes.build
    @categories = Category.all.where('to_item = ?', 'code')
  end

  def create
    @code = current_user.codes.build(code_params)
    if @code.save
      redirect_to upload_code_path(@code)
    else
      render 'new'
    end
  end

  def upload
    @includes = Include.all.where(id: [1..2, 5..6, 9..13])
    @android = Include.all.where(id: [1..2, 5..6, 18..22])
    @ios = Include.all.where(id: [1..2, 5..6, 23..26])
    @dependencies = Dependency.all
  end

  def screenshot

  end

  def update
    if @code.update(code_params)
      if @code.agree == false || @code.agree == nil
        respond_to do |format|
          format.html {redirect_to pending_approv_path(current_user)}
          format.js
        end
      elsif @code.agree == true || @code.agree.nil?
        respond_to do |format|
          format.html {redirect_to item_product_path(current_user)}
          format.js
        end
      elsif @code.reject == true || @code.reject.nil?
        respond_to do |format|
          format.html {redirect_to item_reject_path(current_user)}
          format.js
        end
      else
        respond_to do |format|
          format.html {redirect_to codes_path}
          format.js
        end
      end
    else
      render 'upload'
    end
  end

  def upvote
    if @code.liked_by current_user
      create_notification(@code)
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def downvote
    if @code.disliked_by current_user
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def code_suka
    current_user.akusuka.codes << @code
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  def code_unsuka
    current_user.akusuka.codes.delete(@code)
  end

  def delete_code
    current_user.codes.destroy(@code)
  end

  def rewrite
    @includes = Include.all.where(id: [1..2, 5..6, 9..13])
    @android = Include.all.where(id: [1..2, 5..6, 18..22])
    @ios = Include.all.where(id: [1..2, 5..6, 23..26])
    @dependencies = Dependency.all
  end

  def delete_screenshot
    @screenshot = Screenshot.find(params[:screenshot_id])
    @code.screenshots.destroy(@screenshot)
    respond_to do |format|
      format.js
    end
  end

  def delete_broke
    @broke = Broke.find(params[:broke_id])
    @code.brokes.destroy(@broke)
    respond_to do |format|
      format.js
    end
  end

  def success_reviewer
    Notification.create(user_id: @code.user.id,
                        notified_by_id: current_user.id,
                        code_id: @code.id,
                        notice_type: 'approv')
  end

  def reject_reviewer
    Notification.create(user_id: @code.user.id,
                        notified_by_id: current_user.id,
                        code_id: @code.id,
                        notice_type: 'reject')
  end

  def free_code
    @code = Code.find(params[:id])
    Freeitem.create(code_id: @code.id)
    respond_to do |format|
      format.js
    end
  end

  def code_category
    if params[:subcategory].nil?
      @category = Category.where(:slug => params[:category]).first
      if params[:search].present? || params[:min].present? || params[:max].present?
        @codes = @category.codes.where(:agree => [true]).search(params)
        @minprice = @codes.minimum(:price)
        @maxprice = @codes.maximum(:price)
      else
        @codes = @category.codes.where(:agree => [true])
        @minprice = @codes.minimum(:price)
        @maxprice = @codes.maximum(:price)
      end
    elsif params[:subcategory].present?
      @category = Category.where(:slug => params[:category]).first
      @subcategory = Subcategory.where(:slug =>params[:subcategory]).first
      if params[:search].present? || params[:min].present? || params[:max].present?
        @codes = @subcategory.codes.where(:agree => [true]).search(params)
        @minprice = @codes.minimum(:price)
        @maxprice = @codes.maximum(:price)
      else
        @codes = @subcategory.codes.where(:agree => [true])
        @minprice = @codes.minimum(:price)
        @maxprice = @codes.maximum(:price)
      end
    end
  end

  def delete_by_admin
    @code = Code.find(params[:id])
    @code.destroy
  end

  private

  def code_params
    params.require(:code).permit(:name, :description, :slug, :url_demo, :agree, :reject, :video_demo, :price, :price_ext, :note, :dependency_id, :codesub_id, :category_id, :thumbnail, :tag_list, subcategory_ids: [], browser_ids: [], include_ids:[], compatible_ids: [], screenshots_attributes: [:screenshot], brokes_attributes: [:resources], revrest_attributes: [:id, :content, :_destroy], collection_ids: [])
  end

  def find_code
    @code = Code.find_by_slug!(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to :controller => "codes", :action => "index"
  end

  def agree_code
    @code = Code.find_by_slug!(params[:id])
    if @code.agree == false || @code.agree == nil || @code.reject == true || @code.reject.nil?
      redirect_to dashboard_url
    end
  end

  def reject_true
    @code = Code.find_by_slug!(params[:id])
    if  @code.reject == true || @code.reject.nil?
      redirect_to item_reject_path(current_user)
    end
  end

  def create_notification(code)
    return if code.user.id == current_user.id
    Notification.create(user_id: code.user.id,
                        notified_by_id: current_user.id,
                        code_id: code.id,
                        notice_type: 'lik')
  end

  def set_only_admin
    redirect_to dashboard_url if !current_user.admin?
  end
end
