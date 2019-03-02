# frozen_string_literal: true

# Central controller - allows unlogged in users access
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, :lockable, :confirmable

  has_many :stories, dependent: :destroy

  validates :first_name,   presence: true
  validates :last_name,    presence: true
  # validates :email,        presence: true
end
