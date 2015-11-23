class ChangeTaskEstimatedDurationToString < ActiveRecord::Migration
  def change
    change_column :tasks, :estimated_duration, :string
  end
end
