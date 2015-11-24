class AddIncompleteToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :incomplete, :boolean, default: false
  end
end
