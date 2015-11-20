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

  def self.search(username = nil, chronology = nil)
   
    @task = Task.all
    byebug

    if !username.blank? || !username == ""
      user = User.where("username LIKE ?", "%#{username}%") unless username.blank?
      @task = @task.where(user: user).to_a

      @task = case chronology
            when 'newest_first' then @task
            when 'oldest_first' then @task.reverse
            else
              @task
            end
    else  
      byebug
      @task = case chronology
            when 'newest_first' then @task
            when 'oldest_first' then @task.reverse
            else
              @task
            end
    end
    @task
  end


end
