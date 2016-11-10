class AepluginsController < ApplicationController
  
  before_action :only_admin
  before_action :set_aeplugin, only: [:edit, :update, :delete_aeplugin]
  layout "account"

  def new
    @aeplugin = Aeplugin.new
    @aeplugins = Aeplugin.all.order('created_at desc')
  end

  def create
    @aeplugin = Aeplugin.new(params_aeplugin)
    if @aeplugin.save
      redirect_to aeplugin_new_url
    end
  end

  def edit
    @aeplugins = Aeplugin.all.order('created_at desc')
  end

  def update
    if @aeplugin.update(params_aeplugin)
      redirect_to aeplugin_new_url
    end
  end

  def delete_aeplugin
    @aeplugin.destroy
  end

  private

  def params_aeplugin
    params.require(:aeplugin).permit(:name)
  end

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_aeplugin
    @aeplugin = Aeplugin.find(params[:id])
  end

end
