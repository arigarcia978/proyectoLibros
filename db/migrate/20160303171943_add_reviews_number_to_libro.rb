class AddReviewsNumberToLibro < ActiveRecord::Migration
  def change
    add_column :libros, :reviews, :integer, default: 1
  end
end
