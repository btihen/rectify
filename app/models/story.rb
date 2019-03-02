class Story < ApplicationRecord
  belongs_to :user
  belongs_to :category, optional: true

  validates  :title,    presence: true
  validates  :body,     presence: true
  validates  :user,     presence: true
end
