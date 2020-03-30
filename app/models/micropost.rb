class Micropost < ApplicationRecord
  #1つのmicropostは1人のユーザーにのみ属する
  validates :content, length: { maximum: 140 }, presence: true
end
