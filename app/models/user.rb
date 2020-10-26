class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true
  # データを登録する際に、一定の制約をかけること
  # validates :カラム名, バリデーションの種類
  # presence: trueでからの場合登録不可
end
