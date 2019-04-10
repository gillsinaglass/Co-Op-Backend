class WorkSerializer < ActiveModel::Serializer
  attributes :work_title, :description, :collaboration, :estimated_time, :priority, :status, :image_one, :image_two, :image_three, :video_url, :teams, :users
  # Custom method found in user model for uniq array
end
