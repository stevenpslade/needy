class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :task

  validates :content,
    presence: true

  validates :rating,
    numericality: { only_integer: true }
  validates :rating,
    numericality: { greater_than_or_equal_to: 0 }
  validates :rating,
    numericality: { less_than_or_equal_to: 5 }
end
