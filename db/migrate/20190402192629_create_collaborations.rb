class CreateCollaborations < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborations do |t|
      t.string :name
      t.string :description
      t.string :git_hub
      t.string :pitch
      t.string :status
      t.integer :user_id
      t.string :image_one
      t.string :image_two
      t.string :image_three
      t.string :video

      t.timestamps
    end
  end
end
