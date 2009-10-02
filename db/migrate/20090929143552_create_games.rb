class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.string :status
      t.integer :group_id
      t.integer :round_id
      t.datetime :gametime
      t.integer :stadium_id
      t.integer :team_one
      t.integer :team_two
      t.integer :goals_team_one, :default => 0
      t.integer :goals_team_two, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
