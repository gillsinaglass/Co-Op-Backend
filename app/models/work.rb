class Work < ApplicationRecord
  belongs_to :collaboration
  has_many :tasks
  has_many :users, through: :tasks

  def users_uniq
      self.users.uniq
  end
end
