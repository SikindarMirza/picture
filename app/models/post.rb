class Post < ActiveRecord::Base
  validates :user_id, presence:true
  validates :image, presence:true
  has_attached_file :image, styles:{:medium => "400px"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
end
