class AddColumnToGrammars < ActiveRecord::Migration[7.1]
  def change
    add_column :grammars, :translation, :text
  end
end
