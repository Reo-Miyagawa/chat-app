Rails.application.routes.draw do
  get 'messages/index'
  root to: "messages#index"
# railsの初期画面でトップページへ飛ぶように設定（P:コントローラー名とアクション名はダブルで囲む）
end
