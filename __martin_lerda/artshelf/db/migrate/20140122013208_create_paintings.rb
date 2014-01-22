class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :name
      t.string :artist
      t.string :museum
      t.string :image

      t.timestamps
    end
  end
end
