class AddCategoryIdToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :category_id, :string
    add_column :books, :integer, :string
  end
end
