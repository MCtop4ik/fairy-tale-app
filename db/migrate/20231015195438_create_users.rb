class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :first+last
      t.string :initials
      t.integer :role_id
      t.string :nickname

      t.timestamps
    end
  end
end
