class Activity < ActiveRecord::Base

  belongs_to :user
  has_and_belongs_to_many :positions
#  has_and_belongs_to_many :location

  validates_numericality_of :length, :greater_than => 0
  validates_presence_of :date_of_activity 
end
