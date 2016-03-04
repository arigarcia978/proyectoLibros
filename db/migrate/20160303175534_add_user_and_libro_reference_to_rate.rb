class AddUserAndLibroReferenceToRate < ActiveRecord::Migration
  def change
  	add_reference :rates, :user, index: true, foreign_key: true
  	add_reference :rates, :libro, index: true, foreign_key: true
  end
end
