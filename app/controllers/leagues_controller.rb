class LeaguesController < ApplicationController
  def index
    @leagues = League.all
    
    respond_to do |format|
      format.json { render json: @leagues }
    end
  end
end
