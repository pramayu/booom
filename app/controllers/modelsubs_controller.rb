class ModelsubsController < ApplicationController

  before_action :only_admin
  before_action :set_modelsub, only: [:edit, :update, :delete_modelsub]
  layout "account"

  def new
    @modelsub = Modelsub.new
    @modelsubs = Modelsub.all.order('created_at desc')
    @subcategories = Subcategory.all.order('created_at desc')
  end

  def create
    @modelsub = Modelsub.new(params_modelsub)
    if @modelsub.save
      redirect_to modelsub_new_url
    end
  end

  def edit
    @modelsubs = Modelsub.all.order('created_at desc')
    @subcategories = Subcategory.all.order('created_at desc')
  end

  def update
    if @modelsub.update(params_modelsub)
      redirect_to modelsub_new_url
    end
  end

  def delete_modelsub
    @modelsub.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_url}
      format.js
    end
  end

  private

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_modelsub
    @modelsub = Modelsub.find(params[:id])
  end

  def params_modelsub
    params.require(:modelsub).permit(:name, :subcategory_id)
  end

end
