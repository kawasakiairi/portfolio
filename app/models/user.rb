class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :reviews, dependent: :destroy

  # お気に入り食品機能
  has_many :foods, dependent: :destroy
  has_many :favorite_foods, dependent: :destroy

  mount_uploader :profile_image, ProfileImageUploader

  # ユーザーが設定したパスワードの長さが3文字以上であることを確認
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  # ユーザーが設定したパスワードと確認用のパスワードが一致していることを確認
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  # 確認用パスワードの入力が存在することを確認
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  # 新規にユーザーが登録された際に、emailが存在するか、登録済みかどうかを確認
  validates :email, uniqueness: true, presence: true
end
