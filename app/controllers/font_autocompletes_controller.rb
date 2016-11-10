class FontAutocompletesController < ApplicationController
  def index
    render json: FontAutocomplete.terms_for(params[:term])
  end
end
