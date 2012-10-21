class CreateVocabularies < ActiveRecord::Migration
  def change
    create_table :vocabularies do |t|
      t.string :word
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
