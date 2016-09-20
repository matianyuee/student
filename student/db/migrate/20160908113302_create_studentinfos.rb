class CreateStudentinfos < ActiveRecord::Migration[5.0]
  def change
    create_table :studentinfos do |t|
      t.string :name
      t.string :gender
      t.references :container, foreign_key: true

      t.timestamps
    end
  end
end
