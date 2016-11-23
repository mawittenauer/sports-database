class League < ActiveRecord::Base
  has_many :conferences
  
  def divisions
    conferences.map { |conference| conference.divisions }.flatten
  end
  
  def teams
    divisions.map { |division| division.teams }.flatten
  end
  
  def as_json(options={})
    {
      name: name,
      acronym: acronym,
      sport: sport
    }
  end
end
