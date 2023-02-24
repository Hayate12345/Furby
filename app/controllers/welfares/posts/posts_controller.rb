class Welfares::Posts::PostsController < ApplicationController
  # ! ログインしていない場合はリダイレクトs
  before_action :authenticate_welfare!, only: [:show, :edit, :update, :destroy]

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
      redirect_to "/"
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
