class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.decimal :cost_of_living_index

      t.timestamps null: false
    end
  end
end
