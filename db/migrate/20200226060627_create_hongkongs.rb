class CreateHongkongs < ActiveRecord::Migration[5.2]
  def change
    create_table :hongkongs do |t|
      t.string :content
      t.string :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
