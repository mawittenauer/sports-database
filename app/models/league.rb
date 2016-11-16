class League < ActiveRecord::Base
  has_many :conferences
  has_many :divisions
end
