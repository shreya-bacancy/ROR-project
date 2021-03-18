require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	test "should not save book without title" do
	  book = Book.new										
	  assert_not book.save, "saved a book without title"
	end

end
