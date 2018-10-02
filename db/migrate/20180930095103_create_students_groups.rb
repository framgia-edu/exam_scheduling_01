class CreateStudentsGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :students_groups do |t|
      t.references :student, foreign_key: true
      t.references :group, foreign_key: true
    end
  end
end
