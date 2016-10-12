class BooksController < ApplicationController
  before_action :authenticate_user!
  befoer_action :find_book
  before_action :set_user


  def index
  end

  def show
  end

  def new
  end

  def edit
  end

private
 def find_book
 	@book = Book.find(params[:id])	
 end
 def set_user
 	@user = curent_user 
 end

end
