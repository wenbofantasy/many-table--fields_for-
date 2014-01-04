class WorkExperience < ActiveRecord::Base
  belongs_to :user
  attr_accessible :company, :end_date, :start_date
end
