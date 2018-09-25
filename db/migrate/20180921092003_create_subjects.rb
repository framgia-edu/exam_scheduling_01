class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :code
      t.string :name
      t.integer :students_limit
      t.integer :times_limit

      t.timestamps
    end
  end
end
