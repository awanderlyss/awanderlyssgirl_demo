class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments

  validates :body,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
end
