class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # 処理が呼ばれた段階で、ユーザーがログインしていなければ、ログイン画面に遷移させます。
  before_action :configure_permitted_parameters, if: :devise_controller?
  # 事前処理の対象をconfigure_permitted_parametersメゾッドにしている
  # またif: :devise_controller?とすることで事前処理の条件を指定している
  # 様々なコントローラーがある中でdeviseコントローラーに当たる時のみ事前処理を許している

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # sanitizerは「ログイン」「新規登録」などのリクエストからパラメーターを取得できます。
    # サインアップ時にnemeという情報：パラメーターの取得を許可している
    # deviseの提供元でメソッド名が決められている
  end
end
