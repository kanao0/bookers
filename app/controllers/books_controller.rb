class BooksController < ApplicationController
  def create
    # データを保存するための箱を作る名前は@book
    @book = Book.new(@book_params)

    if @book.save
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end


  def index
    # 新規投稿のデータを入れるための箱を作る名前は@book
    @book = Book.new
    # データ表示したい、データを入れた箱(@booksと名前つけた)を作る
    @books = Book.all
  end
  

  def show
    # Bookモデルのデータみつけてきて～データの箱は@bookって名前にしたよ
    @book = Book.find(params[:id])
  end
  

  def edit
    # Bookモデルのデータをみつけてきて～editページに
    @book = Book.find(params[:id])
  end

  
  def update
    # updateされたデータを入れる箱つくる
    @book = Book.find(params[:id])
    
    if @book.update(book_params)
    
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  
  def destroy
    book = Book.find(params[:id])  # データ（レコード）を1件取得
    # 探してきたデータ（レコード）を削除
    book.destroy  
    redirect_to books_path  # 投稿一覧画面へリダイレクト  
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end




    # def create
    #   # 保存するための箱を作る名前はbook
    #   book = Book.new(book_params)
  
    #   book.save
      
    #   redirect_to book_path(book.id)
  
    # end
    
    
      def update
    updateされたデータを入れる箱
    book = Book.find(params[:id])
    
    book.update(book_params)
    
    redirect_to book_path(book.id)  
  end