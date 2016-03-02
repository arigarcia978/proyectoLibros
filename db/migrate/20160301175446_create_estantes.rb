class CreateEstantes < ActiveRecord::Migration
  def change
    create_table :estantes do |t|
      t.string :usuario_id
      t.string :name

      t.timestamps null: false
    end
  end
end
