Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords", confirmations: "users/confirmations", unlocks: "users/unlocks" }

  devise_for :welfares, controllers: { registrations: "welfares/registrations", sessions: "welfares/sessions", passwords: "welfares/passwords", confirmations: "welfares/confirmations", unlocks: "welfares/unlocks" }

  root to: "pages/tops#index"

  # ! 動物愛護団体関連
  # * 投稿関連
  get "welfares/posts/new", to: "welfares/posts#new"
  post "welfares/posts/create", to: "welfares/posts#create"
  get "welfares/posts/show/:post_id", to: "welfares/posts#show"
  get "welfares/posts/edit/:post_id", to: "welfares/posts#edit"
  patch "welfares/posts/update/:post_id", to: "welfares/posts#update"
  delete "welfares/posts/destroy/:post_id", to: "welfares/posts#destroy"
  # * プロフィール関連
  get "welfares/profiles", to: "welfares/profiles#show"
end
