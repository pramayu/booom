class NotificationsController < ApplicationController
  def link_through
    @notification = Notification.find(params[:id])
    @notification.update read: true
    if @notification.theme.present?
      redirect_to item_path(@notification.theme)
    elsif @notification.code.present?
      redirect_to item_code_path(@notification.code)
    else
      redirect_to store_path(@notification.notified_by)
    end
  end
end
