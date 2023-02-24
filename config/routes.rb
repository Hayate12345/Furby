Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords", confirmations: "users/confirmations", unlocks: "users/unlocks" }

  devise_for :welfares, controllers: { registrations: "welfares/registrations", sessions: "welfares/sessions", passwords: "welfares/passwords", confirmations: "welfares/confirmations", unlocks: "welfares/unlocks" }
end
