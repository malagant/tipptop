class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email, :null => false
      t.string :nickname, :null => false
      t.string :crypted_password, :null => false
      t.string :persistence_token, :null => false
      t.string :status, :default => 'pending'
      t.string :perishable_token, :null => false
      t.string :role_name, :default => 'guest'
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
