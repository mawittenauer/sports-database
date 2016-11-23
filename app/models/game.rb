class Game < ActiveRecord::Base
  belongs_to :home_team, foreign_key: :home_id, class_name: 'Team'
  belongs_to :away_team, foreign_key: :away_id, class_name: 'Team'
  
  def as_json(options={})
    {
      date: day_time,
      home: home_team.name,
      away: away_team.name
    }
  end
end
