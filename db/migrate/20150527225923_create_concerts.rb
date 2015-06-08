class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :title
      t.string :year

      t.timestamps null: false
    end
  end
end
