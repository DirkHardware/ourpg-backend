class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.boolean :published

      t.timestamps
    end
  end
end
