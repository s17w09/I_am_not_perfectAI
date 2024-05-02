class Board < ApplicationRecord
  mount_uploader :board_image, BoardImageUploader

  validates :name, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 30 }
  validates :board_image, presence: true

end
