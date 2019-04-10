class CollaborationSerializer < ActiveModel::Serializer
  attributes :name, :description, :git_hub, :pitch, :status, :image_one, :image_two, :image_three, :video, :works, :user, :users
end
