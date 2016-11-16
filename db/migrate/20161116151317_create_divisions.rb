class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :name
      t.integer :league_id, :conference_id
    end
  end
end
