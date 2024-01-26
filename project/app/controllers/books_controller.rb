class BooksController < ApplicationController
  def get_all_books
    @books = Book.all
    render json:{"data": @books}, include: [:authors, :categories]
  end

  def get_book_by_id
    @book = Book.find(params[:id])
    render json:{"data": @book}, include: [:authors, :categories]
  end

  def create_new_book
    if user_signed_in?
      render json: {
        status: {code: 200, message: 'Book created.'},
        data: Book.create([{title: params[:book][:title], year: params[:book][:year]}])
      }
    else
      render json: {"data": {"test": "Book not created, only signed user can do it"}}
    end
  end

  def destroy_book_by_id
    if user_signed_in?
      @book = Book.find(params[:id])
      @book.destroy
      render json:{"data": {"test": "Book deleted"}}
    else
      render json: {"data": {"test": "Book not deleted, only signed user can do it"}}
    end
  end


end
