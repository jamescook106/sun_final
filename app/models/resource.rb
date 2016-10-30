class Resource < ActiveRecord::Base

  enum language: [ :English, :Spanish, :French]
  enum contenttype: [:Document, :Movie, :Picture]

  validates :name, presence:true, length: { minimum: 2 }
  validates :short, presence:true
  validates :long, presence:true

  has_attached_file :file
  do_not_validate_attachment_file_type :file

end
