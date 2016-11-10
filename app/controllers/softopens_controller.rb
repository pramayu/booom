class SoftopensController < ApplicationController

  before_action :only_admin
  before_action :set_soft, only: [:edit, :update, :delete_softopen]
  layout "account"

  def new
    @softopen = Softopen.new
    @softopens = Softopen.all.order('created_at desc')
  end

  def create
    @softopen = Softopen.new(params_softopen)
    if @softopen.save
      redirect_to softopen_new_url
    end
  end

  def edit
    @softopens = Softopen.all.order('created_at desc')
  end

  def update
    if @softopen.update(params_softopen)
      redirect_to softopen_new_url
    end
  end

  def delete_softopen
    @softopen.destroy
  end

  private

  def params_softopen
    params.require(:softopen).permit(:name)
  end

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_soft
    @softopen = Softopen.find(params[:id])
  end

end
