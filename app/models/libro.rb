class Libro < ActiveRecord::Base
	has_many :estante_libros
	has_many :rates
	
	before_destroy :no_guardado_en_ningun_estante

	validates :isbn, presence: true, uniqueness: true
	#self.primary_key = "isbn"
	
	def no_guardado_en_ningun_estante
		if estante_libros.empty?
			return true
		else
			return false
		end
	end

	def updateRate(id, puntaje)
		libro = Libro.find(id)
		libro.reviews += 1
		libro.rate += puntaje
		libro.save
	end
	
end
