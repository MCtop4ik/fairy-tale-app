class AddColumnToTableTaleData < ActiveRecord::Migration[7.1]
  def change
    add_column :table_tale_data, :video_src, :string
  end
end
