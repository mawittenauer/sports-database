class Team < ActiveRecord::Base
  belongs_to :division
  
  def games
    Game.where("away_id = ? OR home_id = ?", self.id, self.id).order("day_time")  
  end
end
