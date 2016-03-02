class CreateEstanteLibros < ActiveRecord::Migration
  def change
    create_table :estante_libros do |t|
      t.references :libro, index: true, foreign_key: true
      t.belongs_to :estante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
