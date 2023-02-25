Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords", confirmations: "users/confirmations", unlocks: "users/unlocks" }

  devise_for :welfares, controllers: { registrations: "welfares/registrations", sessions: "welfares/sessions", passwords: "welfares/passwords", confirmations: "welfares/confirmations", unlocks: "welfares/unlocks" }

  root to: "pages/tops#index"

  # 動物愛護団体関連
  get "welfares/posts/new", to: "welfares/posts/posts#new"
  post "welfares/posts/create", to: "welfares/posts/posts#create"
end
