class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :monthday
      t.string :prefecture
      t.string :place
      t.references :concert, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
