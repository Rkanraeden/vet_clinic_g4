class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.date :control_date
      t.float :weight
      t.float :height
      t.text :description
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
