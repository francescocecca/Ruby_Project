class AuthorsController < ApplicationController
  def get_all_authors
    @authors=Author.all
    render json:{"data": @authors}
  end

  def get_authors_by_id
    @author = Author.find(params[:id])
    render json:{"data": @author}
  end
end
