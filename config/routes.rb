Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index"
# railsの初期画面でトップページへ飛ぶように設定（P:コントローラー名とアクション名はダブルで囲む）
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]

end
