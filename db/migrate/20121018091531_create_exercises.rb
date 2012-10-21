class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.references :voca
      t.references :exercise_type
      t.string :name
      t.text :description
      t.datetime :due_date
      t.time :length

      t.timestamps
    end
    add_index :exercises, :voca_id
    add_index :exercises, :exercise_type_id
  end
end