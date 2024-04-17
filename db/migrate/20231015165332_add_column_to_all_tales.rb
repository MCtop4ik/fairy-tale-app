class AddColumnToAllTales < ActiveRecord::Migration[7.1]
  def change
    add_column :all_tales, :timestamp, :string
  end
end
