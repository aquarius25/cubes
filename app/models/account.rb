class Account < ApplicationRecord
  belongs_to :account
  mount_uploader :image, ImageUploader
end
