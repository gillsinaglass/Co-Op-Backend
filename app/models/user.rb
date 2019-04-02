class User < ApplicationRecord
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :teams
  has_many :works, through: :teams
  has_many :collaborations, through: :works
end
