class User < ActiveRecord::Base
  has_many :tasks
  has_many :reviews
  has_many :requests

  authenticates_with_sorcery!
end
