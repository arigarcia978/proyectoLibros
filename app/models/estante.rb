class Estante < ActiveRecord::Base
	has_one :user
	has_many :estante_libro, dependent: :destroy
end
