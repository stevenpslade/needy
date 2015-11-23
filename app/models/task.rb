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

  # def self.search(username = nil, title = nil, location = nil, difficulty = nil, chronology = nil)
  #   @task = Task.all

  #   # build up the query, i.e. if the title is blank or title is an empty string, do NOT carry this out
  #   @task = @task.where("title LIKE ?", "%#{title}%") unless title.blank? || title == ""
  #   @task = @task.where("location LIKE ?", "%#{location}%") unless location.blank? || location == ""
  #   @task = @task.where("difficulty LIKE ?", "%#{difficulty}%") unless difficulty.blank? || difficulty == ""

  #   unless username.blank? || username == ""
  #     user = User.where("username LIKE ?", "%#{username}%") 
  #     @task = @task.where(user: user).to_a 
  #   end

  #   @task = case chronology
  #         when 'newest_first' then @task
  #         when 'oldest_first' then @task.reverse
  #         else
  #           @task
  #         end
    
  #   @task
  # end

  def self.search(username = nil, query = nil, difficulty = nil, chronology = nil)

    @task = Task.all

    # build up the query, i.e. if the title is blank or title is an empty string, do NOT run code
    @task = @task.where("title LIKE ? OR location LIKE ?", "%#{query}%","%#{query}%") unless query.blank? || query == "" 
    @task = @task.where("difficulty LIKE ?", "%#{difficulty}%") unless difficulty.blank? || difficulty == ""

    unless username.blank? || username == ""
      user = User.where("username LIKE ?", "%#{username}%") 
      @task = @task.where(user: user).to_a 
    end

    @task = case chronology
          when 'newest_first' then @task
          when 'oldest_first' then @task.reverse
          else
            @task
          end
    # byebug
    @task
  end


end
