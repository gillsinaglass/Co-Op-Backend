class Collaboration < ApplicationRecord
  has_many :works
  has_many :teams, through: :works
  has_many :users, through: :teams
  belongs_to :user
end
