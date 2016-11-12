class LeaguesController < ApplicationController
  def index
    @leagues = League.all
    
    respond_to do |format|
      format.json { render json: @leagues }
    end
  end
  
  def show
    @league = League.find_by(acronym: params[:id])
    
    respond_to do |format|
      format.json { render json: @league }
    end
  end
end
