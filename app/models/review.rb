class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :title, presence: true
  validates :genre_id, numericality: { other_than: 1, message: "can't be blank"} 
  validates :detail, presence: true
  validates :directer, presence: true
  validates :starring, presence: true
  #validates :rate, presence: true

  belongs_to :user
  belongs_to_active_hash :genre
  has_many :comments  # commentsテーブルとのアソシエーション

  has_one_attached :image
end
