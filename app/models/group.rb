class Group < ApplicationRecord
  has_many :messages
  has_many :users, though: :user_groups
  has_many :user_groups
end
