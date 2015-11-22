class ChangeUserRatingToInteger < ActiveRecord::Migration
  def change
    change_column :users, :needy_rating, :integer, :default => 0
    change_column :users, :needed_rating, :integer, :default => 0
  end
end
