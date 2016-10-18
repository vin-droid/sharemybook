class BooksController < ApplicationController
  before_action :authenticate_user!
  before_action :find_book, only:[:show,:update,:edit,:destroy]
  before_action :set_user 


  def index
    @books =  Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

def create
  @book = Book.new(set_params)

  if @book.save
    redirect_to '/'
  else
    render :new
  end
  
end
  def edit
  end

private
 def find_book
 	@book = Book.find(params[:id])	
 end
 def set_user
 	@user = current_user 
 end
 def set_params
   params[:book][:user_id] = @user.id
   params.require(:book).permit(:id, :price, :published_at, :author, :user_id, :name)
   
 end

end
