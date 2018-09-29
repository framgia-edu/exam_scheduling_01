class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :no_day
      t.date :day

      t.timestamps
    end
  end
end
