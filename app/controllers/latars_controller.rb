class LatarsController < ApplicationController

  before_action :only_admin
  before_action :set_latar, only: [:edit, :update, :delete_latar]
  layout "account"

  def new
    @latar = Latar.new
    @latars = Latar.all.order('created_at desc')
  end

  def create
    @latar = Latar.new(params_latar)
    if @latar.save
      redirect_to latar_new_url
    end
  end

  def edit
    @latars = Latar.all.order('created_at desc')
  end

  def update
    if @latar.update(params_latar)
      redirect_to latar_new_url
    end
  end

  def delete_latar
    @latar.destroy
  end

  private

  def params_latar
    params.require(:latar).permit(:name)
  end

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_latar
    @latar = Latar.find(params[:id])
  end

end
