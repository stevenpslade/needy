class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :chat, index: true, foreign_key: true
      t.text :text

      t.timestamps null: false
    end
  end
end
