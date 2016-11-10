class GraphicAutocompletesController < ApplicationController
  
  def index
    render json: GraphicAutocomplete.terms_for(params[:term])
  end

end
