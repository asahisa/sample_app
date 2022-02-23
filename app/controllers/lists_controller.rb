class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    # データの受け取り モデル名(引数)
    list = List.new(list_params)
    # セーブ
    list.save
    # 詳細画面へリダイレクト
    redirect_to list_path(list.id)
  end
  
  def index
    @lists = List.all
  end

  def show
    #投稿を１件取得( ID )
    @list = List.find(params[:id])
  end

  def edit
    #投稿を１件取得( ID )
    @list = List.find(params[:id])
  end

  def update
    #投稿を１件取得( ID )
    list = List.find(params[:id])
    #投稿の更新
    list.update(list_params)
    # 詳細画面へリダイレクト
    redirect_to list_path(list.id)
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to "/lists"
  end

  # 以下全てローカル変数
  private
  # 引数の呼び出し
  def list_params
    # 一時保存.絞り込み(:テーブル名).許可(:カラム名, :カラム名)
    params.require(:list).permit(:title, :body, :image)
  end
end
