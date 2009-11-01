class CreateGamers < ActiveRecord::Migration
  def self.up
    create_table :gamers do |t|
      t.integer :user_id
      t.string :firstname
      t.string :lastname
      t.string :street1
      t.string :street2
      t.string :zipcode
      t.string :city
      t.string :country
      t.string :phone
      t.string :twitter
      t.integer :points, :default => 0
      
      t.timestamps
    end
  end

  def self.down
    drop_table :gamers
  end
end
