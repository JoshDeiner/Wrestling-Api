class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :link
      t.string :author
      t.string :image
      t.integer :book_id
    end
  end
end
