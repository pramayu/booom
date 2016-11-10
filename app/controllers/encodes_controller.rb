class EncodesController < ApplicationController

  before_action :only_admin
  before_action :set_encode, only: [:edit, :update, :delete_encode]
  layout "account"

  def new
    @encode = Encode.new
    @encodes = Encode.all.order('created_at desc')
  end

  def create
    @encode = Encode.new(params_encode)
    if @encode.save
      redirect_to encode_new_url
    end
  end

  def edit
    @encodes = Encode.all.order('created_at desc')
  end

  def update
    if @encode.update(params_encode)
      redirect_to encode_new_url
    end
  end

  def delete_encode
    @encode.destroy
  end

  private

  def params_encode
    params.require(:encode).permit(:name)
  end

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_encode
    @encode = Encode.find(params[:id])
  end

end
