class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user
      t.integer :needed_id
      t.boolean :needy_confirm_completion
      t.boolean :needed_confirm_completion
      t.string :location
      t.text :description
      t.integer :estimated_duration
      t.string :category
      t.datetime :due_date
      t.string :compensation
      t.string :image_url
      t.string :video_url
      t.string :difficulty

      t.timestamps null: false
    end
  end
end
