class AkusukasController < ApplicationController
  def new
    @akusuka = Akusuka.new
    @akusukas = Akusuka.where(user_id: current_user)
  end

  def create
    @akusuka = Akusuka.new(params[:akusuka].permit(:name))
    @akusuka.user_id = current_user.id
    if @akusuka.save
      respond_to do |format|
        format.html { redirect_to :back}
        format.js
      end
    end
  end
end
