class Chat < ActiveRecord::Base
  belongs_to :task
  has_many :messages
end
