class AddCommentToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :comment, :string
  end
end
