class Api::V1::BooksController < ApplicationController


  def create

    @book = Book.new(book_params)
    if @book.save
      render json:  @book
    else
      render json: {errors: @book.errors.full_messages}
    end
  end


  def index
    @books = Book.all
    render json: @books

  end

  def show
    @books = Book.find(params[:id])
    render json: @books
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
  end

  private


  def book_params
    params.require(:book).permit(:title, :description, :link, :author, :image, :book_id, :category_id)
  end
end
