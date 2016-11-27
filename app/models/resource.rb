class Resource < ActiveRecord::Base

  enum language: { English: 0, Spanish: 1, French: 2}
  enum contenttype: {Document: 0, Movie: 1, Picture: 2}
  enum thematic_tag: {Nutrition: 0, Health: 1, Agriculture: 2, WASH: 3, Equity: 4, GenderOrYouth:5, ClimateChange:6}
  enum content_tag: {Advocacy: 0, Policy:1, CampaignAndSocialMobilisation:2, Communication:3, Fundraising:4, BestPractisesAndInnovation: 5, Governance: 6, CapacityDevelopment:7, MultistakeholdersPlatform:8}

  validates :name, presence:true, length: { minimum: 2 }
  validates :short, presence:true
  validates :long, presence:true
  validates :language, presence:true
  validates :contenttype, presence:true
  validates :thematic_tag, presence:true
  validates :protected, presence:true
  validates :content_tag, presence:true
  validates :award, presence:true

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
