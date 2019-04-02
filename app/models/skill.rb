class Skill < ApplicationRecord
  has_many :work_skills
  has_many :user_skills
end
