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






Task.create(user_id: 3, needed_id: 4, needy_confirm_completion: nil, needed_confirm_completion: true, location: 'Whistler, BC', description: 'I have to work late and really need someone to pick up my drycleaning before they close. Please help me', estimated_duration: 40, category: 'errand', compensation: 50, difficulty: 'easy', title: 'Pick up my dry cleaning' )

Task.create(user_id: 3, needed_id: 4, needy_confirm_completion: true, needed_confirm_completion: true, title: "Paint my wall", location: 'New Westminster', description: 'I need someone to come paint a beautiful landscape on my wall while talking soothingly to me.', estimated_duration: 5, category: 'painting', compensation: 'I will make you tea and cookies and a $100 gift card to Boston Pizza', difficulty: 'medium')
