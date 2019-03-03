class Article < ApplicationRecord
  belongs_to :user,     optional: true # temp for demo
  belongs_to :category, optional: true

  validates  :title,    presence: true
  validates  :body,     presence: true
  validates  :user,     presence: true
end
