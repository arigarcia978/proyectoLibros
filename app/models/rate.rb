class Rate < ActiveRecord::Base
  	belongs_to :libro
  	belongs_to :user

  	validates :review, :puntaje, :libro, :user, presence: true
  	validates :puntaje, :numericality => { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 10 }
end
