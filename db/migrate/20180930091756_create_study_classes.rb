class CreateStudyClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :study_classes do |t|
      t.references :subject, foreign_key: true
      t.references :day, foreign_key: true
      t.string :class_code
      t.string :case

      t.timestamps
    end
  end
end
