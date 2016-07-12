class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  has_attached_file :picture, styles: { large: "640x480>", medium: "300x300#", thumb: "160x160#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/


end
