class Task < ActiveRecord::Base
  has_many :requests
  has_many :reviews
  belongs_to :user
end
