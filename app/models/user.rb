class User < ActiveRecord::Base
  # authenticates_with_sorcery!
  has_many :tasks
  has_many :reviews
  has_many :requests

  validates :username,
    presence: true,
    uniqueness: true

  validates :birth_date,
    presence: true

  validates :city,
    presence: true

  validates :phone,
    format: { with: /\d{3}-\d{3}-\d{4}/, message: "Please enter valid phone number" }

end
