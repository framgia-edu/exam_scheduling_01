class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :student_code
      t.string :student_name
      t.integer :user_id

      t.timestamps
    end
    add_index :students, :user_id
  end
end
