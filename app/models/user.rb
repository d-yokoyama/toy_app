class User < ApplicationRecord
  #一人のユーザーに複数のmicropostsがある
  has_many :microposts
  validates :name, presence: true
  validates :email, presence: true
end
