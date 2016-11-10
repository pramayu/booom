class Softopen3dsController < ApplicationController

  before_action :only_admin
  before_action :set_open3d, only: [:edit, :update, :delete_softopen3d]
  layout "account"

  def new
    @softopen3d = Softopen3d.new
    @softopen3ds = Softopen3d.all.order("created_at desc")
  end

  def create
    @softopen3d = Softopen3d.new(params_softopen3d)
    if @softopen3d.save
      redirect_to softopen3d_new_url
    end
  end

  def edit
    @softopen3ds = Softopen3d.all.order("created_at desc")
  end

  def update
    if @softopen3d.update(params_softopen3d)
      redirect_to softopen3d_new_url
    end
  end

  def delete_softopen3d
    @softopen3d.destroy
  end

  private

  def params_softopen3d
    params.require(:softopen3d).permit(:name)
  end

  def set_open3d
    @softopen3d = Softopen3d.find(params[:id])
  end

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

end
