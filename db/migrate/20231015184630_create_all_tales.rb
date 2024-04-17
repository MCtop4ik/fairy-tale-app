class CreateAllTales < ActiveRecord::Migration[7.1]
  def change
    create_table :all_tales do |t|
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
