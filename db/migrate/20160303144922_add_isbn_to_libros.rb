class AddIsbnToLibros < ActiveRecord::Migration
  def change
    add_column :libros, :isbn, :string
  end
end
