class Employee < ActiveRecord::Base
  belongs_to :store

  validates_presence_of :first_name, :last_name, :store_id
  #or put each item on its own line, more readable
  validates_inclusion_of :hourly_rate, in: 40..200
end
