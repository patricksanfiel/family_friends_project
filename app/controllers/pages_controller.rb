class PagesController < ApplicationController

  def home
    @products = Product.all.order(created_at: :desc).limit(8)
    @products_all = Product.all
  end

  def test
  end

end
