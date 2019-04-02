class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :profile_picture
      t.string :job_title
      t.string :user_bio
      t.string :git_hub
      t.string :instagram
      t.string :medium
      t.string :cover_image

      t.timestamps
    end
  end
end
