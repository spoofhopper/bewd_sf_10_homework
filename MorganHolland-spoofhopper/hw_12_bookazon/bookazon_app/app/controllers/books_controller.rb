class BooksController < ApplicationController

  #READ: this will retrieve all books thru active_record
  def index
    @books = Book.all
  end

  def show
    @book = get_book
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render 'new'
    end
  end

  def edit
    @book = get_book
  end

  def update
    @book = get_book
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render 'edit'
    end
  end

  def destroy
    @book = get_book
    @book.destroy
    redirect_to books_path
  end



  private

  def book_params
    params.require(:book).permit(:title, :year_published, :author, :available, :genre, :image_url)

  end


  def get_book
    Book.find(params[:id])
  end


end
