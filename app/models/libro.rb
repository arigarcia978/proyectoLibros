class Libro < ActiveRecord::Base
	has_many :estante_libros
	
	before_destroy :no_guardado_en_ningun_estante

	validates :isbn, presence: true
	#self.primary_key = "isbn"
	
	def no_guardado_en_ningun_estante
		if estante_libros.empty?
			return true
		else
			return false
		end
	end
	
end
