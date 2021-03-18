require 'test_helper'

class DemoFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "welcome page" do
  	get "/"
  	assert_select "h1","welcome"
  end
end
