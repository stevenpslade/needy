class ChangeDefaultTaskImage < ActiveRecord::Migration
  def change
    change_column_default :tasks, :image_url, "https://cdn3.iconfinder.com/data/icons/illustricon-tech/512/task.board-512.png"
  end
end
