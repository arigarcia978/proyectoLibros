class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|

      t.timestamps null: false
    end
  end
end
