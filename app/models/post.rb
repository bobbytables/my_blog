class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, presence: true

  mount_uploader :image, ImageUploader

  accepts_nested_attributes_for :comments
end
