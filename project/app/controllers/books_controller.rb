class BooksController < ApplicationController
  def get_all_books
    @books = Book.all
    render json:{"data": @books}, include: [:authors]
  end

  def get_book_by_id
    @book = Book.find(params[:id])
    render json:{"data": @book}, include: [:authors]
  end

end
