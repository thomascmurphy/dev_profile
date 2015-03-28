class AddStateToCompanies < ActiveRecord::Migration
  def change
    add_reference :companies, :state, index: true, foreign_key: true
  end
end
