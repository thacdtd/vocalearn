class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.references :user
      t.references :role
      
      t.string :email, :null => false
      t.string :password_hash
      t.string :password_salt
      t.integer :user_id
      t.integer :role_id
      t.timestamps
    end
    add_index :users, :user_id
    add_index :users, :role_id
  end

  def self.down
    drop_table :users
  end
  
end
