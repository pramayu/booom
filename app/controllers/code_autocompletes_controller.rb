class CodeAutocompletesController < ApplicationController

  def index
    render json: CodeAutocomplete.terms_for(params[:term])
  end

end
