require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid with valid attributes" do
      expect(Product.new).to be_valid
    end
  end
end
