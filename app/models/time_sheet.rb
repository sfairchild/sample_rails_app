class TimeSheet < ApplicationRecord
  belongs_to :user
  validates :user, presence: { message: 'TimeSheet must have an User' }
end
