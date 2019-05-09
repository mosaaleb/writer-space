class Story < ApplicationRecord
  validates :title, :body, presence: true
  
  belongs_to :user
  delegate :username, :email, to: :user
end