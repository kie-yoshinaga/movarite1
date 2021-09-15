class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true

  #validates :genre_id, numericality: { other_than: 1, message: "can't be blank"} 
  validates :favorite_movie, presence: true


  with_options presence: true do
    validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: "Include both letters and numbers"}
  end

  #belongs_to_active_hash :genre
  #belongs_to :genre
  #has_many :reviews
end