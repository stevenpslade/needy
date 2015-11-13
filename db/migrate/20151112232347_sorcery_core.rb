class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
     t.string :email,            :null => false
     t.string :username
     t.string :phone
     t.date :birth_date
     t.string :skills
     t.text :bio
     t.string :gender
     t.string :city
     t.string :profile_image_url
     t.string :needy_rating
     t.string :needed_rating
     t.boolean :trackable
     t.string :task_radius
     t.string :crypted_password
     t.string :salt

     t.timestamps
   end

    add_index :users, :email, unique: true
  end
end