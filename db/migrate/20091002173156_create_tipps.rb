class CreateTipps < ActiveRecord::Migration
  def self.up
    create_table :tipps do |t|
      t.integer :gamer_id
      t.integer :game_id
      t.integer :goals_one
      t.integer :goals
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :tipps
  end
end
