class BooksController < ApplicationController

  def create
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
