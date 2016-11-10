class CoursesController < ApplicationController

  before_action :find_course, only: [:upload, :update, :manage_course, :item, :upvote, :downvote, :course_suka, :course_unsuka, :delete_course, :rewrite, :delete_trailer, :delete_cofile, :success_reviewer, :reject_reviewer]
  before_action :signed_in_user, only: [:new, :create, :manage_course, :update, :upload, :upvote, :downvote, :course_suka, :course_unsuka, :delete_course, :rewrite, :delete_trailer, :delete_cofile, :reject_reviewer, :free_course]
  before_action :correct_course, only: [:upload, :edit, :manage_course, :rewrite]
  before_action :agree_course, only: [:rewrite]
  before_action :reject_true, only: [:upload]

  layout "courses"

  def index
    if params[:recent]
      @courses = Course.all.where(agree: [true]).where(reject: [false, nil])
      @recents = Course.all.where(agree: [true]).where(reject: [false, nil]).order('created_at desc')
    end
    if params[:recoms]
      @courses = Course.all.where(agree: [true]).where(reject: [false, nil])
      @recoms = Course.all.where(agree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    if params[:course_search].present?
      @searchs = Course.course_search(params[:course_search]).where(agree: [true]).where(reject: [false, nil])
      @course_search = Course.course_search(params[:course_search]).where(agree: [true]).where(reject: [false, nil]).order('sell desc')
    end
    @courses = Course.all.where(agree: [true]).where(reject: [false, nil])
    @recents = Course.all.where(agree: [true]).where(reject: [false, nil]).order('created_at desc').limit(8)
    @recoms = Course.all.where(agree: [true]).where(reject: [false, nil]).order('sell desc').limit(8)
    @vacancies = Vacancy.all.order('RANDOM()').limit(8)
    @frees = Freeitem.all.order('created_at desc')
  end

  def new
    @course = current_user.courses.build
    @categories = Category.all.where('to_item = ?', 'course')
  end

  def create
    @course = current_user.courses.build(course_params)
    if @course.save
      redirect_to upload_course_path(@course)
    else
      render 'new'
    end
  end

  def item
    @comments = Comment.where(course_id: @course)
    @reviews = Review.where(course_id: @course).order('created_at desc')
    if @reviews.blank?
      @avg_rev = 0
    else
      @avg_rev = @reviews.average(:rating).round(2)
    end
    @random_counts = Course.all.where(user_id: @course.user.id).where.not(id: @course.id).order("created_at").limit(4)
  end

  def upload
    # @course.build_freepi
    @languages = Language.all.order('name')
  end

  def update
    if @course.update(course_params)
      if @course.agree == false || @course.agree == nil
        respond_to do |format|
          format.html {redirect_to manage_course_path(@course)}
          format.js
        end
      elsif @course.agree == true || @course.agree.nil?
        respond_to do |format|
          format.html {redirect_to manage_course_path(@course)}
          format.js
        end
      elsif @course.reject == true || @course.reject.nil?
        respond_to do |format|
          format.html {redirect_to item_reject_path(current_user)}
          format.js
        end
      else
        respond_to do |format|
          format.html {redirect_to courses_path}
          format.js
        end
      end
    else
      render 'upload'
    end
  end

  def upvote
    if @course.liked_by current_user
      create_notification(@course)
      respond_to do |format|
        format.html {redirect_to :back}
        format.js
      end
    end
  end

  def downvote
    if @course.disliked_by current_user
      respond_to do |format|
        format.html {redirect_to :back}
        format.js
      end
    end
  end

  def manage_course
    @headsecs = Headsec.where(course_id: @course).order('created_at asc')
  end

  def course_suka
    current_user.akusuka.courses << @course
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  def free_course
    @course = Course.find(params[:id])
    Freeitem.create(course_id: @course.id)
    respond_to do |format|
      format.js
    end
  end

  def course_unsuka
    current_user.akusuka.courses.delete(@course)
  end

  def delete_course
    current_user.courses.destroy(@course)
  end

  def rewrite
    @languages = Language.all.order('name')
  end

  def delete_trailer
    @freepi = Freepi.find(params[:freepi_id])
    @course.freepis.destroy(@freepi)
    respond_to do |format|
      format.js
    end
  end

  def delete_cofile
    @cofile = Cofile.find(params[:cofile_id])
    @course.cofiles.destroy(@cofile)
    respond_to do |format|
      format.js
    end
  end

  def success_reviewer
    Notification.create(user_id: @course.user.id,
                        notified_by_id: current_user.id,
                        course_id: @course.id,
                        notice_type: 'approv')
  end

  def reject_reviewer
    Notification.create(user_id: @course.user.id,
                        notified_by_id: current_user.id,
                        course_id: @course.id,
                        notice_type: 'reject')
  end

  def course_category
    if params[:subcategory].nil?
      @category = Category.where(:slug => params[:category]).first
      @subcategory = Subcategory.where(:slug => params[:subcategory]).first
      if params[:search].present? || params[:min].present? || params[:max].present? || params[:beginner].present? || params[:intermediate].present? || params[:expert].present?
        @courses = @category.courses.where(agree: [true]).search(params)
        @minprice = @courses.minimum(:price)
        @maxprice = @courses.maximum(:price)
      else
        @courses = @category.courses.where(agree: [true])
        @minprice = @courses.minimum(:price)
        @maxprice = @courses.maximum(:price)
      end
    elsif params[:subcategory].present?
      @category = Category.where(:slug => params[:category]).first
      @subcategory = Subcategory.where(:slug => params[:subcategory]).first
      if params[:search].present? || params[:min].present? || params[:max].present? || params[:beginner].present? || params[:intermediate].present? || params[:expert].present?
        @courses = @subcategory.courses.where(:agree => [true]).search(params)
        @minprice = @courses.minimum(:price)
        @maxprice = @courses.maximum(:price)
      else
        @courses = @subcategory.courses.where(:agree => [true])
        @minprice = @courses.minimum(:price)
        @maxprice = @courses.maximum(:price)
      end
    end
  end

  def delete_by_admin
    @course = Course.find(params[:id])
    @course.destroy
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :slug, :note, :price, :reject, :price_ext, :agree, :vi_length, :skill_level, :category_id, :language_id, :thumbnail, :tag_list, subcategory_ids: [], cofiles_attributes: [:coke], freepis_attributes: [:cacaca], collection_ids: [], revrest_attributes: [:content, :_destroy])
  end

  def find_course
    @course = Course.find_by_slug!(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to :controller => "courses", :action => "index"
  end

  def agree_course
    @course = Course.find_by_slug!(params[:id])
    if @course.agree == false || @course.agree == nil || @course.reject == true || @course.reject.nil?
      redirect_to dashboard_url
    end
  end

  def reject_true
    @course = Course.find_by_slug!(params[:id])
    if  @course.reject == true || @course.reject.nil?
      redirect_to item_reject_path(current_user)
    end
  end

  def create_notification(course)
    return if course.user.id == current_user.id
    Notification.create(user_id: course.user.id,
                        notified_by_id: current_user.id,
                        course_id: course.id,
                        notice_type: 'lik')

  end
end
