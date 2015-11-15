class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.references :user
      t.references :task

      t.timestamps null: false
    end
  end
end
