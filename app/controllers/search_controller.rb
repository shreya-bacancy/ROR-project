class SearchController < ApplicationController
  def search
  end
def index
  if params[:q].nil?
    @books = []
  else
    @books = Book.search params[:q]
    puts "bbb#{@books} @books"
  end
end
end
