require 'rails_helper'

RSpec.describe Book, :type => :model do
  
  it "has a valid factory" do
  	expect(FactoryGirl.build(:book)).to be_valid
  end

  it "is invalid without a title" do
  	book = FactoryGirl.build(:book, title: nil)
  	expect(book).to be_invalid
  end

  it "is invalid without an author" do
  	book = FactoryGirl.build(:book, author: nil)
  	expect(book).to be_invalid
  end

  it "is invalid without a number of pages" do
  	book = FactoryGirl.build(:book, pages: nil)
  	expect(book).to be_invalid
  end


end
