class WorkSerializer < ActiveModel::Serializer
  attributes :id, :work_title, :description, :collaboration, :estimated_time, :priority, :status, :tasks, :users_uniq
  # Custom method found in user model for uniq array
  has_many :tasks, serializer: TaskSerializer
end
