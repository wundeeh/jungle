require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe 'Validations' do
    it "is valid with valid attributes" do
      @product = Product.new
      @cat = Category.new
      @cat.name = "CatName"
      @product.name = "Landon"
      @product.price_cents = 15000
      @product.quantity = 1
      @product.category = @cat
      @product.save

      expect(@product.valid?).to be true
    end

    it "is invalid when the name is nil" do
      @product = Product.new
      @cat = Category.new
      @cat.name = "CatName"
      @product.name = nil
      @product.price_cents = 15000
      @product.quantity = 1
      @product.category = @cat
      @product.save
      
      expect(@product).to_not be_valid
      expect(@product.errors[:name]).to include("can't be blank")
    end

    it "is invalid when the price is nil" do
      @product = Product.new
      @cat = Category.new
      @cat.name = "CatName"
      @product.name = "Landon"
      @product.price_cents = nil
      @product.quantity = 1
      @product.category = @cat
      @product.save

      expect(@product).to_not be_valid
      expect(@product.errors[:price_cents]).to include("is not a number")
    end

    it "is invalid when the quantity is nil" do
      @product = Product.new
      @cat = Category.new
      @cat.name = "CatName"
      @product.name = "Landon"
      @product.price_cents = 15000
      @product.quantity = nil
      @product.category = @cat
      @product.save

      expect(@product).to_not be_valid
      expect(@product.errors[:quantity]).to include("can't be blank")
    end

    it "is invalid when the category is nil" do
      @product = Product.new
      @cat = Category.new
      @cat.name = "CatName"
      @product.name = "Landon"
      @product.price_cents = 15000
      @product.quantity = 1
      @product.category = nil
      @product.save

      puts "-----"
      puts @product.errors.full_messages
      puts "-----"

      expect(@product).to_not be_valid
      expect(@product.errors[:category]).to include("can't be blank")
    end
  end
end
