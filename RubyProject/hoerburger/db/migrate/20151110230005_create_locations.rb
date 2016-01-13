class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :travel, index: true, foreign_key: true
      t.string :locations
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
end
