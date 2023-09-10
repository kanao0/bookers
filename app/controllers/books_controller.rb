class BooksController < ApplicationController
  # 要らない
  # def new
  # end

  def create
    # 保存するための箱を作る名前はbook
    book = Book.new(book_params)

# データベースにデータ保存する
    book.save
# データベースに保存が終わったら詳細画面へ行くbookの→showアクション
    # redirect_to prefix_path(渡す.id)
    redirect_to book_path(book.id)


  end

  def index
    # データを入れるための箱を作る
    @book = Book.new
    # データ表示したい、データを入れた箱(@booksと名前つけた)を作る
    @books = Book.all
  end

  def show
    # Bookモデルのデータみつけてきてーデータの箱は@bookって名前にしたよ
    @book = Book.find(params[:id])
  end

  def edit
    # book = Book.find(params[:id])  # データ（レコード）を1件取得
    # book.destroy  # データ（レコード）を削除
    # redirect_to books_path  # 投稿一覧画面へリダイレクト  
  end
  
  def destroy
    book = Book.find(params[:id])  # データ（レコード）を1件取得
    
    book.destroy  # データ（レコード）を削除
    redirect_to books_path  # 投稿一覧画面へリダイレクト  
  end

private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end


end