class WelfarePosts::Posts::WelfaresController < ApplicationController
  # ! ログインしていない場合はリダイレクトs
  before_action :authenticate_welfare!, only: [:show, :edit, :update, :destroy]

  # ! 投稿一覧を取得するメソッド
  def index
  end
end
