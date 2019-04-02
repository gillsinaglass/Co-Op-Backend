class Work < ApplicationRecord
  belongs_to :collaboration
  has_many :teams
  has_many :users, through: :teams
end
