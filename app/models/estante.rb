class Estante < ActiveRecord::Base
	has_many :estante_libros, dependent: :destroy

	belongs_to :user
	has_many :libros, through: :estante_libros
end
