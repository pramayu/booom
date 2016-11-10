class VideofxAutocompletesController < ApplicationController

  def index
    render json: VideofxAutocomplete.terms_for(params[:term])
  end

end
