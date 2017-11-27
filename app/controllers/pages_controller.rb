class PagesController < ApplicationController

  def home
    @products = Product.all.order(created_at: :desc).limit(8)
  end

  def test
  end

end
