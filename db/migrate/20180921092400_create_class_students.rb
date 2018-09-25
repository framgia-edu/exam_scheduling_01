class CreateClassStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :class_students do |t|
      t.string :name
      t.string :subject_code
      t.string :student_code
      t.string :student_name
      t.timestamps
    end
    add_index :class_students, :subject_code
    add_index :class_students, :student_code
    add_index :class_students, [:subject_code, :student_code], unique: true
  end
end
