class CreateWorkSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :work_skills do |t|
      t.integer :skill_id
      t.integer :work_id

      t.timestamps
    end
  end
end
