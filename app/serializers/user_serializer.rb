class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :profile_picture, :job_title, :user_bio, :git_hub, :instagram, :medium, :cover_image, :skills, :works,
  # Custom method found in user model for uniq array
   :collaborations_uniq
   has_many :works, serializer: WorkSerializer
   has_many :tasks, serializer: TaskSerializer

end
