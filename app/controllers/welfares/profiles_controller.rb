class Welfares::ProfilesController < ApplicationController
  def show
    @posts = WelfarePost.where(welfare_id: current_welfare.id).order(created_at: "DESC")
  end
end
