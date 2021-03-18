require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit book_index_path
  
    assert_selector "h1", text: "Books"
  end

  test "creating an article" do
  	visit book_index_path
  	click_on "New book"
  	fill_in "book[title]", with: "creating an article"
  	fill_in "book[text]", with: 'creating an article sucessfully'
  	click_on "Save Book"
  	assert_text "creating an article"
  end
end
