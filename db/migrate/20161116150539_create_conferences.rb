class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.string :acronym
      t.integer :league_id
    end
  end
end
