class BooksController < ApplicationController
  def get_all_books
    @books = Book.all
    render json:{"data": @books}
  end
end
