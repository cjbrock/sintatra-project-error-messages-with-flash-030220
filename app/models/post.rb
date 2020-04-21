class Post < ActiveRecord::Base
  belongs_to :user

  validates :character, presence: true
  validates :quote, presence: true

end