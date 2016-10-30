class Resource < ActiveRecord::Base

  enum language: { English: 0, Spanish: 1, French: 2}
  enum contenttype: [:Document, :Movie, :Picture]

  validates :name, presence:true, length: { minimum: 2 }
  validates :short, presence:true
  validates :long, presence:true

  has_attached_file :file
  do_not_validate_attachment_file_type :file

  def self.search(search,language)
    where("name iLIKE ? AND language = ?", "%#{search}%", Resource.languages["#{language}"])
  end

end
