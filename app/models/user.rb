class User < ApplicationRecord
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :tasks
  has_many :works, through: :tasks
  has_many :collaborations, through: :works
  has_many :collaborations
  accepts_nested_attributes_for :works, allow_destroy: true

  def collaborations_uniq
    self.collaborations.uniq
  end
end
