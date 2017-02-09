class Post < ApplicationRecord
  default_scope { order('updated_at DESC') } # sorts by updated at in reverse orderr
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :body,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
end
