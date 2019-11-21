class Restaurant < ApplicationRecord

  # validates(:name, { presence: true })
  # validates(:name, presence: true)
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, exclusion: { in: %w(neptunian) }
  has_many :reviews, dependent: :destroy
  # validates_associated :reviews
end
