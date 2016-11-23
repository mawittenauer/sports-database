class Team < ActiveRecord::Base
  belongs_to :division
  
  def games
    Game.where("away_id = ? OR home_id = ?", self.id, self.id).order("day_time")  
  end
  
  def schedule(season)
    games.where("season = ?", season)
  end
  
  def as_json(options={})
    {
      name: name  
    }
  end
end
