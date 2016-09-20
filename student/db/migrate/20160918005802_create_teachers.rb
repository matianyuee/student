class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :gender
      t.integer :container_id

      t.timestamps
    end
  end
end
