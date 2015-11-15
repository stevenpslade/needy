class Task < ActiveRecord::Base
  has_many :requests
  has_many :reviews
  belongs_to :user

  # validates :location,
  #   presence: true

  # validates :description,
  #   presence: true

  # validates :category,
  #   presence: true

  # validates :compensation,
  #   presence: true

  # validates :difficulty,
  #   presence: true
end
