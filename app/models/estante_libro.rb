class EstanteLibro < ActiveRecord::Base
  	belongs_to :libro
  	belongs_to :estante

  	validates :estante, presence: true
end
