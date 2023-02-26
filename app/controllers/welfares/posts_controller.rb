class Welfares::PostsController < ApplicationController
  # ! ログインが必要な処理
  before_action :authenticate_welfare!, only: [:new, :edit, :update, :destroy]

  # ! 投稿の詳細を表示するメソッド
  def show
    @post = WelfarePost.find(params[:post_id])

    # * 投稿していない情報は表示しない
    if @post.welfare_id != current_welfare.id
      redirect_to "/welfares/profiles"
    end
  end

  # ! 投稿を新規作成するメソッド
  def new
    @post = WelfarePost.new
  end

  # ! 投稿を新規作成するメソッド
  def create
    @post = WelfarePost.new(post_params)

    # * ログインしている愛護団体のIDを挿入
    @post.welfare_id = current_welfare.id

    if @post.save
      redirect_to "welfares/profiles"
    else
      render :new
    end
  end

  private

  # ! ペットの情報を投稿時にバインドするパラメータ
  def post_params
    params.require(:welfare_post).permit(:image, :title, :profile, :appeal_point, :age, :kinds, :price)
  end
end
