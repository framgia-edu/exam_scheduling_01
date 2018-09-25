class CreateUsersSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :users_subjects do |t|
      t.integer :user_id
      t.integer :subject_id
      
      t.timestamps
    end
    add_index :users_subjects, :user_id
    add_index :users_subjects, :subject_id
  end
end
