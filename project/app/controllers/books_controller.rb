class BooksController < ApplicationController
  def get_all_books
    render json:{"data": "all books"}
  end
end
