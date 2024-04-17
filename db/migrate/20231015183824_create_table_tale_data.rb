class CreateTableTaleData < ActiveRecord::Migration[7.1]
  def change
    create_table :table_tale_data do |t|
      t.text :title
      t.text :full_text
      t.text :grammar
      t.integer :author_id
      t.text :bg_pic

      t.timestamps
    end
  end
end
