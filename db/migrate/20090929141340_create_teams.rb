class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.string :position
      t.integer :round
      t.string :country, :default => ""
      t.string :flag_uri, :default => ""
      t.integer :group_id
      t.integer :games, :default => 0
      t.integer :wins, :default => 0
      t.integer :draw, :default => 0
      t.integer :losses, :default => 0
      t.integer :goals_won, :default => 0
      t.integer :goals_lost, :default => 0
      t.integer :points, :default => 0
      t.integer :place, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
