class Post < ApplicationRecord
  # sorts by updated at in reverse orderr
  default_scope { order('updated_at DESC') }
  has_many :comments, dependent: :destroy
  belongs_to :user

end
