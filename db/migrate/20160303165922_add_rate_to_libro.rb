class AddRateToLibro < ActiveRecord::Migration
  def change
    add_column :libros, :rate, :decimal, default: 1
  end
end
