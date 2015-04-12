class AddParentToSkills < ActiveRecord::Migration
  def change
    add_reference :skills, :parent, polymorphic: true, index: true
  end
end
