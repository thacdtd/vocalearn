class CreateVocas < ActiveRecord::Migration
  def self.up
    create_table :vocas do |t|      
      t.string :word,    :null => false
      t.string :image
      t.string :sound
      t.integer :status, :null => false
      t.text :meanings,  :null =>false
      t.text :description
      t.integer :user_id, :null => false

      t.timestamps
    end
    add_index :vocas, :user_id
  end
  
  def self.down
    drop_table :vocas
  end
end
