class Group < ApplicationRecord
  has_many :user_groups, dependent: :destroy
  has_many :members, through: :user_groups, source: :user
  
  has_many :events
  
  validates :name, presence: true, uniqueness: true
end
