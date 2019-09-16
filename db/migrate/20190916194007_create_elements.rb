class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.belongs_to :game, foreign_key: true
      t.string :type
      t.string :name
      t.string :description
      t.integer :order
      t.string :content

      t.timestamps
    end
  end
end
