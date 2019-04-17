class TaskSerializer < ActiveModel::Serializer
  attributes :id, :user, :priority, :status, :estimated_time, :description, :work, :created_at

end
