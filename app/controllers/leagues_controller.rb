class LeaguesController < ApplicationController
  before_action :get_league, except: :index
  def index
    @leagues = League.all
    
    respond_to do |format|
      format.json { render json: @leagues }
    end
  end
  
  def show    
    respond_to do |format|
      format.json { render json: @league.conferences }
    end
  end
  
  def show_teams    
    respond_to do |format|
      format.json { render json: @league.teams }
    end
  end
  
  private
  
  def get_league
    @league = League.find_by(acronym: params[:id])
  end
end
