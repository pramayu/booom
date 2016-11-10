class PaymentNoty < ApplicationRecord
  belongs_to :cart
  serialize :params
  after_create :mark_cart_as_purchased, :notif, :balance

  private

  def mark_cart_as_purchased
    if status == "Completed"
      cart.update_attribute(:purchased_at, Time.now)
      cart.update_attribute(:status, "success")
    end
  end

  def notif
    cart.line_items.each do |item|
      if cart.status == "success" 
        if item.theme.present?
          item.notifications.create!(user_id: item.theme.user.id,
                                     notified_by_id: params[:custom],
                                     theme_id: item.theme.id,
                                     notice_type: 'bought')
        elsif item.code.present?
          item.notifications.create!(user_id: item.code.user.id,
                                     notified_by_id: params[:custom],
                                     code_id: item.code.id,
                                     notice_type: 'bought')
        elsif item.font.present?
          item.notifications.create!(user_id: item.font.user.id,
                                     notified_by_id: params[:custom],
                                     font_id: item.font.id,
                                     notice_type: 'bought')
        elsif item.graphic.present?
          item.notifications.create!(user_id: item.graphic.user.id,
                                     notified_by_id: params[:custom],
                                     graphic_id: item.graphic.id,
                                     notice_type: 'bought')
        elsif item.course.present?
          item.notifications.create!(user_id: item.course.user.id,
                                     notified_by_id: params[:custom],
                                     course_id: item.course.id,
                                     notice_type: 'bought')
        elsif item.t3d.present?
          item.notifications.create!(user_id: item.t3d.user.id,
                                     notified_by_id: params[:custom],
                                     t3d_id: item.t3d.id,
                                     notice_type: 'bought')
        elsif item.videofx.present?
          item.notifications.create!(user_id: item.videofx.user.id,
                                     notified_by_id: params[:custom],
                                     videofx_id: item.videofx.id,
                                     notice_type: 'bought')
        end
      end
    end
  end
  

  def balance
    cart.line_items.each do |item|
      if cart.status == "success"
        if item.theme.present?
          get_real_balance(item.theme)
          get_selling(item.theme)
        elsif item.code.present?
          get_real_balance(item.code)
          get_selling(item.code)
        elsif item.font.present?
          get_real_balance(item.font)
          get_selling(item.font)
        elsif item.graphic.present?
          get_real_balance(item.graphic)
          get_selling(item.graphic)
        elsif item.videofx.present?
          get_real_balance(item.videofx)
          get_selling(item.videofx)
        elsif item.course.present?
          get_real_balance(item.course)
          get_selling(item.course)
        elsif item.t3d.present?
          get_real_balance(item.t3d)
          get_selling(item.t3d)
        end
      end
    end
  end

  def get_real_balance(_item)
    items = cart.line_items.group('who_have').sum('unit_price')
    items.each do |i, price|
      puts "#{x_prc = (price.to_f - (price.to_f * 0.2))}"
      if _item.user.id == i.to_i
        _item.user.balance += x_prc
      end
    end
    _item.user.save!
  end

  def get_selling(_sell)
    puts "#{_sell.sell += 1}"
    _sell.save!
  end

end
