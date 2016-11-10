class AccountsController < ApplicationController
  layout "account"
  before_action :signed_in_user, only: [:index, :dashboard, :item_product, :upload_page, :personal, :sosmed, :secure, :store_front, :wishlist, :earning]
  before_action :find_user, only: [:dashboard, :item_product]
  before_action :correct_user, only: [:personal, :sosmed, :secure, :item_product, :store_front, :wishlist]
  before_action :set_only_admin, only: [:datasupport]
  def index

  end

  def dashboard
    @followers = current_user.followers.order('created_at desc').limit(6)
    @notifications = current_user.notifications.order('created_at desc').limit(2)
    @themes = Theme.all
    @codes = Code.all
    @graphics = Graphic.all
    @fonts = Font.all
    @videofxes = Videofx.all
    @t3ds = T3d.all
    @courses = Course.all
    @users = User.all
    @notes = current_user.notes.order('created_at desc').limit(3)
    @shared = current_user.team.notes.order('created_at desc').limit(3) if current_user.reviewer?
  end

  def item_product
    @themes = current_user.themes.where(aggree: [true]).where(reject: [false, nil])
    @codes = current_user.codes.where(agree: [true]).where(reject: [false, nil])
    @graphics = current_user.graphics.where(agree: [true]).where(reject: [false, nil])
    @t3ds = current_user.t3ds.where(agree: [true]).where(reject: [false, nil])
    @videofxes = current_user.videofxes.where(agree: [true]).where(reject: [false, nil])
    @fonts = current_user.fonts.where(agree: [true]).where(reject: [false, nil])
    @courses = current_user.courses.where(agree: [true]).where(reject: [false, nil])
  end

  def pending_approv
    @usr = User.find(params[:id])
    @themes = current_user.themes.where(aggree: [false, nil]).where(reject: [false, nil])
    @codes = current_user.codes.where(agree: [false,nil]).where(reject: [false, nil])
    @graphics = current_user.graphics.where(agree: [false, nil]).where(reject: [false, nil])
    @fonts = current_user.fonts.where(agree: [false, nil]).where(reject: [false, nil])
    @videofxes = current_user.videofxes.where(agree: [false, nil]).where(reject: [false, nil])
    @t3ds = current_user.t3ds.where(agree: [false, nil]).where(reject: [false, nil])
    @courses = current_user.courses.where(agree: [false, nil]).where(reject: [false, nil])
  end

  def upload_page

  end

  def email_active

  end

  def personal
    @usr = User.find(params[:id])
  end

  def sosmed
    @usr = User.find(params[:id])
  end

  def secure
    @usr = User.find(params[:id])
  end

  def store_front
    @usr = User.find(params[:id])
  end

  def store
    @usr = User.find(params[:id])
    @contact = Contact.new
    render layout: "themes"
  end

  def follower
    @usr = User.find(params[:id])
    render layout: "themes"
  end

  def following
    @usr = User.find(params[:id])
    render layout: "themes"
  end

  def wishlist
    # @usr = User.find(params[:id])
    # @coll = current_user.collections.build
    # @collection =  @usr.collections.find_by(params[:collection_id])
    # @collection = Collection.where(user_id: @usr.id).find(params[:id])
  end

  def beseller
    @usr = User.find(params[:id])
    @usr.update seller: true
    redirect_to dashboard_path
  end

  def bejobpost
    @usr = User.find(params[:id])
    @usr.update job_post: true
    redirect_to dashboard_path
  end

  def item_follower
    @usr = User.find(params[:id])
  end

  def item_like
    @usr = User.find(params[:id])
    @themes =  current_user.votes.where(votable_type: Theme).votables
    @codes =  current_user.votes.where(votable_type: Code).votables
    @graphics =  current_user.votes.where(votable_type: Graphic).votables
    @t3ds =  current_user.votes.where(votable_type: T3d).votables
    @videofxes = current_user.votes.where(votable_type: Videofx).votables
    @fonts = current_user.votes.where(votable_type: Font).votables
    @courses = current_user.votes.where(votable_type: Course).votables
  end

  def show_theme
    @theme = Theme.find_by_slug!(params[:theme_id])
  end

  def show_code
    @code = Code.find_by_slug!(params[:code_id])
  end

  def show_graphic
    @graphic = Graphic.find_by_slug!(params[:graphic_id])
  end

  def show_font
    @font = Font.find_by_slug!(params[:font_id])
  end

  def show_t3d
    @t3d = T3d.find_by_slug!(params[:t3d_id])
  end

  def show_video
    @videofx = Videofx.find_by_slug!(params[:videofx_id])
  end

  def show_course
    @course = Course.find_by_slug!(params[:course_id])
  end

  def item_reject
    @usr = User.find(params[:id])
    @themes = current_user.themes.where(aggree: [false, nil]).where(reject: [true])
    @codes = current_user.codes.where(agree: [false,nil]).where(reject: [true])
    @graphics = current_user.graphics.where(agree: [false, nil]).where(reject: [true])
    @fonts = current_user.fonts.where(agree: [false, nil]).where(reject: [true])
    @videofxes = current_user.videofxes.where(agree: [false, nil]).where(reject: [true])
    @t3ds = current_user.t3ds.where(agree: [false, nil]).where(reject: [true])
    @courses = current_user.courses.where(agree: [false, nil]).where(reject: [true])
  end

  def download

  end

  def datasupport
    @categories = Category.all
    @subcategories = Subcategory.all.limit(5)
    @browsers = Browser.all.limit(5)
    @dependencies = Dependency.all.order('name').limit(5)
    @compatibles = Compatible.all.order('name').limit(5)
    @include_for_theme = Include.joins(maintoitems: :toitem).where(maintoitems: {toitem_id: 1}).limit(5)
    @include_for_code = Include.joins(maintoitems: :toitem).where(maintoitems: {toitem_id: 2}).limit(5)
    @include_for_graphic = Include.joins(maintoitems: :toitem).where(maintoitems: {toitem_id: 5}).limit(5)
    @include_for_t3d = Include.joins(maintoitems: :toitem).where(maintoitems: {toitem_id: 6}).limit(5)
    @include_for_video = Include.joins(maintoitems: :toitem).where(maintoitems: {toitem_id: 9}).limit(5)
    @include_for_font = Include.joins(maintoitems: :toitem).where(maintoitems: {toitem_id: 10}).limit(5)
    # @includes_2 = Include.joins(:maintoitems, :toitems).where('maintoitems.toitem_id = ?', '2')
    @codesubs = Codesub.all.order('name').limit(5)
    @softopens = Softopen.all.order('name').limit(5)
    @industries = Industry.all.order('name').limit(5)
    @softopen3ds = Softopen3d.all.order('name').limit(5)
    @modelsubs = Modelsub.all.order('name').limit(5)
    @genres = Genre.all.order('name').limit(5)
    @encodes = Encode.all.order('name').limit(5)
    @latars = Latar.all.order('name').limit(5)
    @vidsubs = Vidsub.all.limit(5)
    @framerates = Framerate.all.order('name').limit(5)
    @aeplugins = Aeplugin.all.order('name').limit(5)
    @languages = Language.all.order('name').limit(5)
  end

  def earning
    @sales = current_user.notifications.where(notice_type: 'bought').order('created_at desc')
  end

  def activity
    @notifies = current_user.notifications.order('created_at desc')
  end

  def withdr

  end

  def vacancy
    @vacancies = current_user.vacancies if current_user.vacancies.present?
  end

  def reviewer_data
    if params[:reviewers]
      @users = User.all.where("reviewer = ?", "true").order("created_at desc")
    elsif params[:add_reviewer]
      @user = User.new
      @teams = Team.all.order('created_at desc')
    end
  end

  def member_jobpost
    @users = User.all.where("seller = ? or job_post = ?", "true", "true").order("created_at desc")
  end

  def accept_withdr
    @witdrs = Withdrawal.all.where('status = ?', 'false').order('created_at asc')
  end

  def all_product
    if params[:themes]
      @themes = Theme.all.where('aggree = ?', 'true').order('created_at desc')
    elsif params[:codes]
      @codes = Code.all.where('agree = ?', 'true').order('created_at desc')
    elsif params[:graphics]
      @graphics = Graphic.all.where('agree = ?', 'true').order('created_at desc')
    elsif params[:t3ds]
      @t3ds = T3d.all.where('agree = ?', 'true').order('created_at desc')
    elsif params[:videofxes]
      @videofxes = Videofx.all.where('agree = ?', 'true').order('created_at desc')
    elsif params[:fonts]
      @fonts = Font.all.where('agree = ?', 'true').order('created_at desc')
    elsif params[:courses]
      @courses = Course.all.where('agree = ?', 'true').order('created_at desc')
    end
  end

  def all_vacancy
    if params[:programmer]
      @vacancies = Vacancy.all.where('category_id = ?', '1134').order('created_at desc')
    elsif params[:designer]
      @vacancies = Vacancy.all.where('category_id = ?', '1135').order('created_at desc')
    elsif params[:animator]
      @vacancies = Vacancy.all.where('category_id = ?', '1136').order('created_at desc')
    elsif params[:network]
      @vacancies = Vacancy.all.where('category_id = ?', '1137').order('created_at desc')
    end
  end

  def order
    # @orders = PaymentNoty.order("date_trunc('day', created_at) desc")
    if params[:day]
      @orders = PaymentNoty.where('created_at >= ?', 24.hours.ago).order('created_at desc')
    elsif params[:week]
      @orders = PaymentNoty.where('created_at >= ?', 1.week.ago).order('created_at desc')
    elsif params[:month]
      @orders = PaymentNoty.where('created_at >= ?', 1.month.ago).order('created_at desc')
    else
      @orders = PaymentNoty.all.order('created_at desc')
    end
  end

  def note
    @note = current_user.notes.build
    @notes = current_user.notes.order('created_at desc')
    @shared = current_user.team.notes.order('created_at desc').limit(3) if current_user.reviewer?
  end

  def note_edit
    @note = Note.find(params[:id])
    @notes = Note.all.order('created_at desc')
  end

  def free_item
    @frees = Freeitem.all.order('created_at desc')
  end

  def free_destroy
    @free = Freeitem.find(params[:id])
    @free.destroy
    respond_to do |format|
      format.js
    end
  end

  private 

  def find_user
    @user = User.find_by(params[:user_id])
  end

  def set_only_admin
    redirect_to dashboard_path if current_user.admin == false
  end

  def edt_usr_params
    params.require(:user).permit(:username, :first_n, :last_n, :company, :country, :city, :postal_code, :avatar, :show_country, :freelance_av, :skill_user, :email, :password, :password_confirmation)
  end
end
