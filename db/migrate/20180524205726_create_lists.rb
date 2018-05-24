class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :place
      t.text :body
      t.boolean :complete

      t.timestamps
    end
  end
end
