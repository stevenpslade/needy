class SetDefaultImages < ActiveRecord::Migration
  def change
    change_column_default :users, :profile_image_url, "http://smallfarms.oregonstate.edu/sites/default/files/_includes/staff_placeholder.jpg"
    change_column_default :tasks, :image_url, "http://a3.mzstatic.com/us/r30/Purple3/v4/2f/81/d1/2f81d1ad-bd3c-1bf0-d355-0a843c1f8977/icon128-2x.png"
  end
end
