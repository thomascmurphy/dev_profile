class AddBlurbToUsers < ActiveRecord::Migration
  def change
    add_column :users, :blurb, :text
    add_column :users, :title, :string
  end
end
