module LibrosHelper

	def get_book_rate(libro_isbn)
		@libro = Libro.where(isbn: libro_isbn).first
		if @libro.nil?
			return 1
		else
			@result = (@libro.rate/@libro.reviews)
			return @result.to_f
		end
	end

end
