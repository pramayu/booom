class GenresController < ApplicationController
  
  before_action :only_admin
  before_action :set_genre, only: [:edit, :update, :delete_genre]
  layout "account"

  def new
    @genre = Genre.new
    @genres = Genre.all.order('created_at desc')
  end

  def create
    @genre = Genre.new(params_genre)
    if @genre.save
      redirect_to genre_new_url
    end
  end

  def edit
    @genres = Genre.all.order('created_at desc')
  end

  def update
    if @genre.update(params_genre)
      redirect_to genre_new_url
    end
  end

  def delete_genre
    @genre.destroy
  end

  private

  def params_genre
    params.require(:genre).permit(:name)
  end

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_genre
    @genre = Genre.find(params[:id])
  end

end
