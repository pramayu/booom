class CompatiblesController < ApplicationController

  before_action :only_admin
  before_action :set_compa, only: [:edit, :update, :delete_compatible]
  layout "account"

  def new
    @compatible = Compatible.new
    @compatibles = Compatible.all.order('created_at desc')
  end

  def create
    @compatible = Compatible.new(params_compatible)
    if @compatible.save
      redirect_to compatible_new_url
    end
  end

  def edit
    @compatibles = Compatible.all.order('created_at desc')
  end

  def update
    if @compatible.update(params_compatible)
      redirect_to compatible_new_url
    end
  end

  def delete_compatible
    @compatible.destroy
    respond_to do |format|
      format.html {redirect_to dashboard_url}
      format.js
    end
  end

  private

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_compa
    @compatible = Compatible.find(params[:id])
  end

  def params_compatible
    params.require(:compatible).permit(:name)
  end
end
