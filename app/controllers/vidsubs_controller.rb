class VidsubsController < ApplicationController

  before_action :only_admin
  before_action :set_vidsub, only: [:edit, :update, :delete_vidsub]
  layout "account"

  def new
    @vidsub = Vidsub.new
    @vidsubs = Vidsub.all.order('created_at desc')
    @subcategories = Subcategory.all.order('created_at desc')
  end

  def create
    @vidsub = Vidsub.new(params_vidsub)
    if @vidsub.save
      redirect_to vidsub_new_url
    end
  end

  def edit
    @vidsubs = Vidsub.all.order('created_at desc')
    @subcategories = Subcategory.all.order('created_at desc')
  end

  def update
    if @vidsub.update(params_vidsub)
      redirect_to vidsub_new_url
    end
  end

  def delete_vidsub
    @vidsub.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_url}
      format.js
    end
  end

  private

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_vidsub
    @vidsub = Vidsub.find(params[:id])
  end

  def params_vidsub
    params.require(:vidsub).permit(:name, :subcategory_id)
  end

end
