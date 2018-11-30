class StorefrontController < ApplicationController
  
  def home
  end

  def all_items
      @products = Product.all
  end
  
  def furniture
      @furniture = Category.find_by(name: "Furniture").products
  end 

  def mens_items
      @mens = []
      Product.all.each do |product|
          if product.category.gender == "male"
            @mens.push(product)
          end 
      end 
  end

  def womens_items
          @womens = []
      Product.all.each do |product|
          if product.category.gender == "female"
            @womens.push(product)
          end 
      end 
  end

  def items_by_brand
      @products = Product.where(brand: params[:brand])
      @brand = params[:brand]
  end

  def items_by_category
      @category = Category.find(params[:category_id])
      @products = @category.products
  end
end
