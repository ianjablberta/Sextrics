class User < ActiveRecord::Base

  has_many :activities

  validates_uniqueness_of :username

  def recent_activities
    return self.activities.order('activities.date_of_activity DESC')
  end

  def ten_most_recent_activities
    return recent_activities.limit(10)
  end
end
