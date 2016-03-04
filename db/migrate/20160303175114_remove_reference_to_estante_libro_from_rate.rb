class RemoveReferenceToEstanteLibroFromRate < ActiveRecord::Migration
	def change
	  	remove_reference :rates, :estante_libro
	end
end
