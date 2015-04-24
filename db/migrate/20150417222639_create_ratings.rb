class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :parent, polymorphic: true, index: true
      t.references :subject, polymorphic: true, index: true
      t.integer :rating
      t.integer :rating_min
      t.integer :rating_max

      t.timestamps null: false
    end
  end
end
