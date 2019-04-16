class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :work_title
      t.string :description
      t.integer :collaboration_id
      t.integer :estimated_time
      t.string :priority
      t.string :status
      t.string :image_one
      t.string :image_two
      t.string :image_three
      t.string :video_url
      t.string :git_hub
      t.integer :owner
      t.integer :designer
      t.integer :developer

      t.timestamps
    end
  end
end
