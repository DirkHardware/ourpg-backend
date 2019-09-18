class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.string :title
      t.string :description
      t.string :kind
      t.string :content
      t.integer :order
      t.belongs_to :game, foreign_key: true

      t.timestamps
    end
  end
end
