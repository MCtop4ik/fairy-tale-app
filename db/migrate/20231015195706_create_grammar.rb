class CreateGrammar < ActiveRecord::Migration[7.1]
  def change
    create_table :grammars do |t|
      t.text :phrase
      t.text :transcription

      t.timestamps
    end
  end
end
