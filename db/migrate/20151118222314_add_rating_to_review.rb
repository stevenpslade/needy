class AddRatingToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :user_rating, :integer
  end
end
