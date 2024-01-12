class AuthorsController < ApplicationController
  def get_all_authors
    @authors=Author.all
    render json:{"data": @authors}, include: [:books]
  end

  def get_authors_by_id
    @author = Author.find(params[:id])
    render json:{"data": @author}, include: [:books]
  end

  # Search with the space

  def get_by_name
    @author = Author.where(name: params[:name])
    render json: {"data": @author}, include: [:books]
  end
end
