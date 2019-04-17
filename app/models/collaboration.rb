class Collaboration < ApplicationRecord
  has_many :works
  has_many :tasks, through: :works
  has_many :users, through: :tasks
  belongs_to :user

  def users_uniq
      self.users.uniq
  end
end
