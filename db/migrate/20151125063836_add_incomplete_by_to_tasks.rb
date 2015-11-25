class AddIncompleteByToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :incomplete_by, :integer
  end
end
