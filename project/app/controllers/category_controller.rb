class CategoryController < ApplicationController
  def get_all_category
    @category = Category.all
    render json:{"data": @category}
  end
end
