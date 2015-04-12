class RemoveUserFromSkills < ActiveRecord::Migration
  def change
    remove_reference :skills, :user, index: true, foreign_key: true
  end
end
