class AddPointsToGamers < ActiveRecord::Migration
  def self.up
    add_column :gamers, :points, :integer, :default => 0
  end

  def self.down
    remove_column :gamers, :points
  end
end
