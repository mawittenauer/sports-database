class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :home_id, :away_id
      t.datetime :day_time
    end
  end
end
