class AuthorsController < ApplicationController
  def get_all_authors
    @authors=Author.all
    render json:{"data": @authors}
  end
end
