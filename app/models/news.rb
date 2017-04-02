class News < ActiveRecord::Base

  validates :title, presence:true
  validates :short, presence:true
  validates :long, presence:true
  validates :quote, presence:true

  has_attached_file :picture
  do_not_validate_attachment_file_type :picture

end
