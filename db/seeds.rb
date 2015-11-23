# t.string   "email",                                                                                                                             null: false
#     t.string   "username"
#     t.string   "phone"
#     t.date     "birth_date"
#     t.string   "skills"
#     t.text     "bio"
#     t.string   "gender"
#     t.string   "city"
#     t.string   "profile_image_url",               default: "http://smallfarms.oregonstate.edu/sites/default/files/_includes/staff_placeholder.jpg"
#     t.string   "needy_rating"
#     t.string   "needed_rating"
#     t.boolean  "trackable"
#     t.string   "task_radius"
#     t.string   "crypted_password"
#     t.string   "salt"
#     t.datetime "created_at"
#     t.datetime "updated_at"
#     t.string   "remember_me_token"
#     t.datetime "remember_me_token_expires_at"
#     t.string   "reset_password_token"
#     t.datetime "reset_password_token_expires_at"
#     t.datetime "reset_password_email_sent_at"
#     t.string   "first_name"
#     t.string   "last_name"




Task.create(user_id: 1, needed_id: nil, needy_confirm_completion: false, needed_confirm_completion: false, location: '1500 West 2nd Avenue, Vancouver, BC', description: 'Hey guys. Im at work and cant get time off to get a coffee downstairs.  Could someone please help me pick up one?  Thanks!', estimated_duration: 10, category: 'coffee', compensation: 5, difficulty: 'easy', title: 'Starbucks Coffee Run!' )
Task.create(user_id: 1, needed_id: nil, needy_confirm_completion: false, needed_confirm_completion: false, location: '370 Cambie St, Vancouver, BC V6B 2N3', description: 'Really craving a Porchetta but Im really busy. Could anyone in the area help pick me one up?  Cheers!', estimated_duration: 15, category: 'food', compensation: 5, difficulty: 'easy', title: 'Meat & Bread Porchetta Pickup' )
Task.create(user_id: 2, needed_id: nil, needy_confirm_completion: false, needed_confirm_completion: false, location: '3045 W Broadway, Vancouver, BC V6K 2G9', description: 'need someone to pick me up Doggies Delight pet food from Bosleys.  Try get me the 10kg one but if they run out, the 15kg one will suffice for now!', estimated_duration: 30, category: 'pet', compensation: 10, difficulty: 'easy', title: 'Pick up some dog food for me!' )
Task.create(user_id: 2, needed_id: nil, needy_confirm_completion: false, needed_confirm_completion: false, location: '128 W Hastings St #300, Vancouver, BC V6B 1G9', description: 'Looking for someone in Lighthouse to help me with some coding stuff.  Im like 100th in queue for assistance', estimated_duration: 60, category: 'errand', compensation: 'i will build you a website when im pro', difficulty: 'hard', title: 'Coding help at Lighthouse!' )
Task.create(user_id: 3, needed_id: nil, needy_confirm_completion: false, needed_confirm_completion: false, location: '2902 West Broadway, Vancouver, BC', description: 'I have to work late and really need someone to pick up my drycleaning before they close. Please help me', estimated_duration: 60, category: 'errand', compensation: 15, difficulty: 'easy', title: 'Pick up my dry cleaning' )
