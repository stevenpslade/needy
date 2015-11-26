class ChangeDefaultCompletionInTasks < ActiveRecord::Migration
  def change
    change_column_default :tasks, :needy_confirm_completion, false
    change_column_default :tasks, :needed_confirm_completion, false
  end
end
