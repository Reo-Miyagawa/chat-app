Rails.application.routes.draw do
  devise_for :users
  # get 'messages/index'
  root to: "rooms#index"
# railsの初期画面でトップページへ飛ぶように設定（P:コントローラー名とアクション名はダブルで囲む）
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end
