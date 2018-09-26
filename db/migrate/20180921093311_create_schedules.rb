class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :class_name
      t.string :subject_code
      t.string :subject_name
      t.integer :times_exam
      t.string :room_code
      t.datetime :day
      t.integer :session

      t.timestamps
    end
    add_index :schedules, [:subject_code,:room_code]
  end
end
