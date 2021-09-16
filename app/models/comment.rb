class Comment < ApplicationRecord
  belongs_to :review  # reviewsテーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション
end
