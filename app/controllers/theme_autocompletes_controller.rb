class ThemeAutocompletesController < ApplicationController
  
  def index
    render json: ThemeAutocomplete.terms_for(params[:term])
  end

end
