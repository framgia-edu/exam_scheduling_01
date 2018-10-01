class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :remember_token
      t.string :position
      t.string :email
      t.string :image

      t.timestamps
    end
  end
end
