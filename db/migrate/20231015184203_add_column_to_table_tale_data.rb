class AddColumnToAllTableTaleData < ActiveRecord::Migration[7.1]
  def change
    add_column :all_table_tale_data, :video_src, :string
  end
end
