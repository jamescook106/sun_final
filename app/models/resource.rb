class Resource < ActiveRecord::Base

  enum language: { English: 0, Spanish: 1, French: 2}
  enum contenttype: {Document: 0, Movie: 1, Picture: 2}

  validates :name, presence:true, length: { minimum: 2 }
  validates :short, presence:true
  validates :long, presence:true
  validates :language, presence:true
  validates :contenttype, presence:true

  has_attached_file :file
  do_not_validate_attachment_file_type :file

  def self.search(search,language,contenttype)
    if language.blank? && contenttype.blank?
      where("name iLIKE ?", "%#{search}%")
    elsif contenttype.blank?
      where("name iLIKE ? AND language = ?", "%#{search}%", Resource.languages["#{language}"])
    elsif language.blank?
      where("name iLIKE ? AND contenttype = ?", "%#{search}%", Resource.contenttypes["#{contenttype}"])
    else
      where("name iLIKE ? AND contenttype = ? AND language = ?", "%#{search}%", Resource.contenttypes["#{contenttype}"], Resource.languages["#{language}"])
    end

  end

end
