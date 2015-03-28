class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :postcode

      t.timestamps null: false
    end
  end
end
