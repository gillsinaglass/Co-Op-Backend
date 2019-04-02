class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.string :category

      t.timestamps
    end
  end
end