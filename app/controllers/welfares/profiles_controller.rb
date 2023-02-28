class Welfares::ProfilesController < ApplicationController
  # ! ログインが必要な処理
  before_action :authenticate_welfare!, only: [:show, :edit, :update, :destroy]

  def show
    @posts = WelfarePost.where(welfare_id: current_welfare.id).order(created_at: "DESC")
  end
end
