class T3dAutocompletesController < ApplicationController

  def index
    render json: T3dAutocomplete.terms_for(params[:term])
  end

end
