class FrameratesController < ApplicationController
  
  before_action :only_admin
  before_action :set_framerate, only: [:edit, :update, :delete_framerate]
  layout "account"

  def new
    @framerate = Framerate.new
    @framerates = Framerate.all.order('created_at desc')
  end

  def create
    @framerate = Framerate.new(params_framerate)
    if @framerate.save
      redirect_to framerate_new_url
    end
  end

  def edit
    @framerates = Framerate.all.order('created_at desc')
  end

  def update
    if @framerate.update(params_framerate)
      redirect_to framerate_new_url
    end
  end

  def delete_framerate
    @framerate.destroy
  end

  private

  def params_framerate
    params.require(:framerate).permit(:name)
  end

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_framerate
    @framerate = Framerate.find(params[:id])
  end

end
