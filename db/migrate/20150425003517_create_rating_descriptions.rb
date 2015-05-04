class CreateRatingDescriptions < ActiveRecord::Migration
  def change
    create_table :rating_descriptions do |t|
      t.integer :rating
      t.text :description
      t.references :rateable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
