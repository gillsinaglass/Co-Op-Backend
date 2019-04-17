class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :priority
      t.string :status
      t.float :estimated_time
      t.string :description
      t.integer :work_id


      t.timestamps
    end
  end
end
