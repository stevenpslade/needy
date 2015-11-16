class User < ActiveRecord::Base
  # authenticates_with_sorcery!
  has_many :tasks
  has_many :reviews
  has_many :requests

  authenticates_with_sorcery!

  validates :username,
    presence: true,
    uniqueness: true

  # validates :first_name,
  #   presence: true

  # validates :birth_date,
  #   presence: true

  # validates :city,
  #   presence: true

  # validates :phone,
  #   format: { with: /\d{3}-\d{3}-\d{4}/, message: "Please enter valid phone number" }

  validates :email, uniqueness: true

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes["password"] }
  validates :password, confirmation: true, if: -> { new_record? || changes["password"] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes["password"] }

end
