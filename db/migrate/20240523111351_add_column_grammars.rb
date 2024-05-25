class AddColumnGrammars < ActiveRecord::Migration[7.1]
  def change
    add_column :grammars, :tale_ids, :string
  end
end
