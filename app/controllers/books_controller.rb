class BooksController < ApplicationController
  # 要らない
  # def new
  # end

  def create
    # 保存するための箱を作る
    book = Book.new(book_params)

# データベースにデータ保存する
    book.save
# データベースに保存が終わったら詳細画面へ行く
    redirect_to book_path(book.id)


  end

  def index
    # データを入れるための箱を作る
    @book = Book.new
    # データ表示したい、データを入れた箱(@booksと名前つけた)を作る
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end


end