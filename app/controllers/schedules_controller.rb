class SchedulesController < ApplicationController
  def schedule
    @team = Team.find_by(name: params[:team])
    
    respond_to do |format|
      format.json { render json: @team.schedule(params[:season]) }
    end
  end
end
