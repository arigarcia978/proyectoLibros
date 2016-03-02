class Estante < ActiveRecord::Base
	has_many :estante_libros, dependent: :destroy

	def add_user(user_id)

	end
end
