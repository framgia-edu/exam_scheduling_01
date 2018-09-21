class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.integer :user_id
      t.integer :schedule_id

      t.timestamps
    end
    add_index :invitations, :user_id
    add_index :invitations, :schedule_id
    add_index :invitations, [:user_id, :schedule_id], unique: true
  end
end
