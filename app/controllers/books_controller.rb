class BooksController < ApplicationController
  before_action :authenticate_user!
  before_action :find_book, only:[:show,:update,:edit,:destroy, :downvote, :upvote]
  before_action :set_user 
  after_action :update_points, only:[:upvote, :downvote]


  def index
    @books =  Book.all
  end

  def show
  end

  def new
    @book = Book.new
    cover = @book.build_cover
  end

def create
  @book = Book.new(set_params)

  if @book.save
    redirect_to '/'
  else
    cover = @book.build_cover
    render new_book_path
  end  
end
  def edit
  end


def upvote
  @book.liked_by current_user
  redirect_to @book
end

def downvote
  @book.downvote_from current_user
  redirect_to @book
end

def update_points
  
end


def add_book_to_wishlist
  
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
   params.require(:book).permit(:id, :price, :published_at, :author, :user_id, :name,:cover_attributes=>[:image])
   
 end

end
