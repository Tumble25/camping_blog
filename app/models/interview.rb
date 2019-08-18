class Interview < ApplicationRecord
  has_many :comments, dependent: :destroy
  mount_uploader :picture, PhotoUploader
end
