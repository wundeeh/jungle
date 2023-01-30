require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "Validations" do
    it "is valid with valid attributes" do
      @user = User.new(
        name: "Landon",
        email: "test@test.com",
        password: "VeryC00lPassword",
        password_confirmation: "VeryC00lPassword"
      )

      @user.save

      expect(@user).to be_valid
    end

    it "is invalid when password confirmation is wrong" do
      @user = User.new(
        name: "Landon",
        email: "test@test.com",
        password: "VeryC00lPassword",
        password_confirmation: "WrongPassword"
      )

      @user.save

      expect(@user).to_not be_valid
    end

    it "is invalid when there's a repeating email" do
      @user = User.new(
        name: "Landon",
        email: "test@test.com",
        password: "VeryC00lPassword",
        password_confirmation: "VeryC00lPassword"
      )
      @user.save

      @u = User.new(
        name: "Landon",
        email: "test@test.com",
        password: "VeryC00lPassword",
        password_confirmation: "VeryC00lPassword"
      )

      @u.save
      
      expect(@u).to_not be_valid

    end

    it "is invalid if the password is shorter than 5 characters" do
      @user = User.new(
        name: "Landon",
        email: "test@test.com",
        password: "ohNo",
        password_confirmation: "ohNo"
      )
      @user.save

      expect(@user).to_not be_valid
    end
  end
end
