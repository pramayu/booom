class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  include UsersHelper
  helper_method :current_notifications, :item_sum, :current_cart, :mailbox, :conversation, :_raty, :_raty_code, :_raty_graph, :_raty_vid, :_raty_3d, :_raty_font, :_raty_course, :_sell_sum, :_all_items, :_item_sold, :_all_price, :_item_by_user, :_day_passed
  add_flash_types :danger, :success, :info, :warning

  private

  def current_notifications
    @notifications = current_user.notifications.order('created_at desc').limit(4)
  end

  def _item_by_user(user)
    user.themes.where('aggree = ? and reject = ?', 'true', 'false').count + user.codes.where('agree = ? and reject = ?', 'true', 'false').count + user.graphics.where('agree = ? and reject = ?', 'true', 'false').count + user.t3ds.where('agree = ? and reject = ?', 'true', 'false').count + user.videofxes.where('agree = ? and reject = ?', 'true', 'false').count + user.fonts.where('agree = ? and reject = ?', 'true', 'false').count + user.courses.where('agree = ? and reject = ?', 'true', 'false').count
  end

  def _sell_sum(_user)
    @themes = Theme.all.where(aggree: [true]).where(reject: [false, nil])
    @codes = Code.all.where(agree: [true]).where(reject: [false, nil])
    @graphics = Graphic.all.where(agree: [true]).where(reject: [false, nil])
    @t3ds = T3d.all.where(agree: [true]).where(reject: [false, nil])
    @videofxes = Videofx.all.where(agree: [true]).where(reject: [false, nil])
    @fonts = Font.all.where(agree: [true]).where(reject: [false, nil])
    @courses = Course.all.where(agree: [true]).where(reject: [false, nil])
    @sell = @themes.where(user_id: _user).sum('sell').to_i + @codes.where(user_id: _user).sum('sell').to_i + @graphics.where(user_id: _user).sum('sell').to_i + @t3ds.where(user_id: _user).sum('sell').to_i + @videofxes.where(user_id: _user).sum('sell').to_i + @fonts.where(user_id: _user).sum('sell').to_i + @courses.where(user_id: _user).sum('sell').to_i
  end

  def _item_sold
    @themes = Cart.joins(:line_items).where(:status => 'success').count('theme_id')
    @codes = Cart.joins(:line_items).where(:status => 'success').count('code_id')
    @graphics = Cart.joins(:line_items).where(:status => 'success').count('graphic_id')
    @t3ds = Cart.joins(:line_items).where(:status => 'success').count('t3d_id')
    @videos = Cart.joins(:line_items).where(:status => 'success').count('videofx_id')
    @fonts = Cart.joins(:line_items).where(:status => 'success').count('font_id')
    @courses = Cart.joins(:line_items).where(:status => 'success').count('course_id')
    @item = @themes + @codes + @graphics + @t3ds + @videos + @fonts + @courses
  end

  def _all_price
    @revenue = Cart.joins(:line_items).where(:status => 'success').sum('unit_price')
  end
  
  def _all_items
    @themes = Theme.all.where(aggree: [true]).where(reject: [false, nil])
    @codes = Code.all.where(agree: [true]).where(reject: [false, nil])
    @graphics = Graphic.all.where(agree: [true]).where(reject: [false, nil])
    @t3ds = T3d.all.where(agree: [true]).where(reject: [false, nil])
    @videofxes = Videofx.all.where(agree: [true]).where(reject: [false, nil])
    @fonts = Font.all.where(agree: [true]).where(reject: [false, nil])
    @courses = Course.all.where(agree: [true]).where(reject: [false, nil])
    @sell = @themes.count + @codes.count + @graphics.count + @t3ds.count + @videofxes.count + @fonts.count + @courses.count
  end

  def item_sum
    @user = User.find(params[:id])
    @items = @user.themes.where(aggree: true).count.to_i  + @user.codes.where(agree: true).count.to_i  + @user.graphics.where(agree: true).count.to_i  + @user.t3ds.where(agree: true).count.to_i + @user.fonts.where(agree: true).count.to_i + @user.courses.where(agree: true).count.to_i+ @user.videofxes.where(agree: true).count.to_i
  end

  def current_cart
    if session[:cart_id]
      @current_cart ||= Cart.find(session[:cart_id])
      session[:cart_id] = nil if @current_cart.purchased_at
    end
    if session[:cart_id].nil?
      @current_cart = Cart.create!
      session[:cart_id] = @current_cart.id
    end
    @current_cart
  end

  def mailbox
    @mailbox ||= current_user.mailbox
  end

  def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end

  def _raty(wtf_val)
    @reviews = Review.where(theme_id: wtf_val).order("created_at desc")
    @cal = @reviews.average(:rating).round(2)
  end

  def _raty_code(wtf_val)
    @reviews = Review.where(code_id: wtf_val).order("created_at desc")
    @cal = @reviews.average(:rating).round(2)
  end

  def _raty_graph(wtf_val)
    @reviews = Review.where(graphic_id: wtf_val).order("created_at desc")
    @cal = @reviews.average(:rating).round(2)
  end

  def _raty_3d(wtf_val)
    @reviews = Review.where(t3d_id: wtf_val).order("created_at desc")
    @cal = @reviews.average(:rating).round(2)
  end

  def _raty_vid(wtf_val)
    @reviews = Review.where(videofx_id: wtf_val).order("created_at desc")
    @cal = @reviews.average(:rating).round(2)
  end

  def _raty_font(wtf_val)
    @reviews = Review.where(font_id: wtf_val).order("created_at desc")
    @cal = @reviews.average(:rating).round(2)
  end

  def _raty_course(wtf_val)
    @reviews = Review.where(course_id: wtf_val).order("created_at desc")
    @cal = @reviews.average(:rating).round(2)
  end

  def _day_passed(vacancy)
    @time = (Time.now - vacancy.created_at) / 86400
  end


end
