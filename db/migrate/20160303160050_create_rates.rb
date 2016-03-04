class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.references :estante_libro, index: true, foreign_key: true
      t.decimal :puntaje
      t.string :review

      t.timestamps null: false
    end
  end
end
