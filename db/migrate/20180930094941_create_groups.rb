class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.references :study_class, foreign_key: true
      t.integer :no_group
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
