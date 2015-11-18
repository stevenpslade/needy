class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :task

  validates :content,
    presence: true

  validates :user_rating,
    numericality: { only_integer: true }
  validates :user_rating,
    numericality: { greater_than_or_equal_to: 0 }
  validates :user_rating,
    numericality: { less_than_or_equal_to: 5 }
end
