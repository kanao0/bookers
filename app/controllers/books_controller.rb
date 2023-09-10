class BooksController < ApplicationController
  # 要らない
  # def new
  # end

  def create
    # 保存するための箱を作る
    book = Book.new(book_params)

# データベースにデータ保存する
    book.save


    redirect_to '/books/show'

  end

  def index
    # データを入れるための箱を作る
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  def edit
  end

private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end


end


    # @book = Book.new(book_params)

    # @book.save