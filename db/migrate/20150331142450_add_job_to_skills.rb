class AddJobToSkills < ActiveRecord::Migration
  def change
    add_reference :skills, :job, index: true, foreign_key: true
  end
end
