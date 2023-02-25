class WelfarePost < ApplicationRecord
  # ! バリデーションの設定
  validates :image, presence: true
  validates :title, presence: true
  validates :profile, presence: true
  validates :appeal_point, presence: true
  validates :age, presence: true
  validates :kinds, presence: true

  mount_uploader :image, ImageUploader
end
