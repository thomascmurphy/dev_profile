class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :user, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :salary
      t.decimal :wage

      t.timestamps null: false
    end
  end
end
