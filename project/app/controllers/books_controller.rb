class BooksController < ApplicationController
  def get_all_books
    @books = Book.all
    render json:{"data": @books}
  end

  def get_book_by_id
    @book = Book.find(params[:id])
    render json:{"data": @book}
  end


  def get_all_books
    if params[:author].present?
      @author = Author.find_by(name: params[:author])
      puts "#{@author}"

      if @author.present?
        @books = @author.books
      else
        render json: { error: "Autore non trovato" }, status: :not_found
        return
      end
    else
      @books = Book.all
    end

    render json: { data: @books }
  end

  def get_book_year
    @book = Book.where(year: params[:year])
    render json: {"data": @book}
  end
end
