class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :code
      t.string :name
      t.integer :capacity
      t.integer :exam_during

      t.timestamps
    end
  end
end
