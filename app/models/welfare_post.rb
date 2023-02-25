class WelfarePost < ApplicationRecord
  # ! バリデーションの設定
  validates :image, presence: true
  validates :amount, presence: true
  validates :place, presence: true

  mount_uploader :image, ImageUploader
end
