class InterviewPhoto < ApplicationRecord
  belongs_to :interview
  mount_uploader :picture, PhotoUploader
end
