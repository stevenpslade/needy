class AddUserIdAndSentAtToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :user_id, :integer
        add_column :messages, :sent_at, :string

  end
end
