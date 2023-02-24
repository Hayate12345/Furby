class WelfarePosts::Posts::WelfaresController < ApplicationController
  # ! ログインしていない場合はリダイレクトs
  before_action :authenticate_welfare!, only: [:show, :edit, :update, :destroy]

  # ! 投稿を新規作成するメソッド
  def new
    @post = WelfarePost.new
  end

  # ! 投稿を新規作成するメソッド
  def create
    @post = WelfarePost.new(post_params)
  end

  private

  def post_params
    params.require(:welfare_post).permit(:, :image, :amount, :place)
  end
end
