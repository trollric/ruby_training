require "spec_helper"

describe Book do

  before :each do
    @book = Book.new "Title", "Author", :category
  end

  describe "#new" do
    it "returns a new book object" do
      #@book.should be_an_instance_of Book
      expect(@book).to be_an_instance_of Book
    end

    it "Throws an ArgumentError when given fewer than 3 parameters" do
      #lambda{Book.new "title", "author"}.should raise_exception ArgumentError
      expect(lambda{Book.new "title", "author"}).to raise_exception ArgumentError
    end
  end

  describe '#title' do
    it "returns the correct title" do
      #@book.title.should eql "Title"
      expect(@book.title).to eql "Title"
    end
  end

  describe '#category' do
    it "returns the correct category" do
      #@book.category.should eql :category
      expect(@book.category).to eql :category
    end
  end

  describe '#author' do
    it "returns the correct author" do
      #@book.author.should eql "Author"
      expect(@book.author).to eql "Author"
    end
  end

end
