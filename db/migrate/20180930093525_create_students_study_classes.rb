class CreateStudentsStudyClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :students_study_classes do |t|
      t.references :student, foreign_key: true
      t.references :study_class, foreign_key: true
    end
  end
end
