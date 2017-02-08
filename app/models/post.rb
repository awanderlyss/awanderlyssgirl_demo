class Post < ApplicationRecord
  has_many :comments

  validates :body,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
end
