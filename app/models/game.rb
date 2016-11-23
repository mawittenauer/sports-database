class Game < ActiveRecord::Base
  belongs_to :home_team, foreign_key: :home_id, class_name: 'Team'
  belongs_to :away_team, foreign_key: :away_id, class_name: 'Team'
end
