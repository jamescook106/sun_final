class News < ActiveRecord::Base

  validates :title, presence:true
  validates :short, presence:true
  validates :long, presence:true
  validates :quote, presence:true
  validates :post, presence:true
  validates :caption, presence:true

  has_attached_file :picture,
  :styles => {
    :home => "600x400#",
    :news => "300x200#"}
  do_not_validate_attachment_file_type :picture

  def self.search(search)
    where("title iLIKE ? OR short iLIKE ?", "%#{search}%","%#{search}%")
  end

end
