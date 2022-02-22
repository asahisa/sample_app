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
    @list = List.find(params[:id])
  end

  def edit
  end
  
  # 以下全てローカル変数化
  private
  # 引数の呼び出し
  def list_params
    # 一時保存.絞り込み(テーブル名).許可(カラム名)
    params.require(:list).permit(:title, :body)
  end
end
