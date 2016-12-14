class Resource < ActiveRecord::Base

  enum language: { English: 0, Spanish: 1, French: 2}
  enum contenttype: {Document: 0, Movie: 1, Picture: 2, Presentation: 3, Champion: 4, Website: 5}
  enum thematic_tag: {Nutrition: 0, Health: 1, Agriculture: 2, WASH: 3, Equity: 4, GenderOrYouth:5, ClimateChange:6}
  enum content_tag: {Advocacy: 0, Policy:1, CampaignAndSocialMobilisation:2, Communication:3, Fundraising:4, BestPractisesAndInnovation: 5, Governance: 6, CapacityDevelopment:7, MultistakeholdersPlatform:8}

  validates :name, presence:true, length: { minimum: 2 }
  validates :short, presence:true
  validates :long, presence:true
  validates :language, presence:true
  validates :contenttype, presence:true
  validates :thematic_tag, presence:true
  validates :content_tag, presence:true

  has_attached_file :file, :styles => lambda { |a| a.instance.is_processable? ? {:thumbnail => "400x400>"} : {} }
  do_not_validate_attachment_file_type :file

  def is_processable?
    return false unless file.content_type
    ['image/jpeg', 'image/pjpeg', 'image/gif', 'image/png', 'image/x-png', 'image/jpg', 'application/pdf'].include?(file.content_type)
  end

  def self.search(search,language,contenttype,content_tag,thematic_tag)

    if language.blank?
      if contenttype.blank?
        if content_tag.blank?
          if thematic_tag.blank?
            where("name iLIKE ?", "%#{search}%")
          else
            where("name iLIKE ? AND thematic_tag = ?", "%#{search}%",Resource.thematic_tags["#{thematic_tag}"])
          end
        else
          if thematic_tag.blank?
            where("name iLIKE ? AND content_tag = ?", "%#{search}%",Resource.content_tags["#{content_tag}"])
          else
            where("name iLIKE ? AND thematic_tag = ? AND content_tag = ?", "%#{search}%",Resource.thematic_tags["#{thematic_tag}"],Resource.content_tags["#{content_tag}"])
          end
        end
      else
        if content_tag.blank?
          if thematic_tag.blank?
            where("name iLIKE ? AND contenttype = ?", "%#{search}%", Resource.contenttypes["#{contenttype}"])
          else
            where("name iLIKE ? AND thematic_tag = ? AND contenttype = ?", "%#{search}%",Resource.thematic_tags["#{thematic_tag}"], Resource.contenttypes["#{contenttype}"])
          end
        else
          if thematic_tag.blank?
            where("name iLIKE ? AND content_tag = ? AND contenttype = ?", "%#{search}%",Resource.content_tags["#{content_tag}"], Resource.contenttypes["#{contenttype}"])
          else
            where("name iLIKE ? AND thematic_tag = ? AND content_tag = ? AND contenttype = ?", "%#{search}%",Resource.thematic_tags["#{thematic_tag}"],Resource.content_tags["#{content_tag}"], Resource.contenttypes["#{contenttype}"])
          end
        end
      end
    else
      if contenttype.blank?
        if content_tag.blank?
          if thematic_tag.blank?
            where("name iLIKE ? AND language = ?", "%#{search}%",Resource.languages["#{language}"])
          else
            where("name iLIKE ? AND thematic_tag = ? AND language = ?", "%#{search}%",Resource.thematic_tags["#{thematic_tag}"], Resource.languages["#{language}"])
          end
        else
          if thematic_tag.blank?
            where("name iLIKE ? AND content_tag = ? AND language = ?", "%#{search}%",Resource.content_tags["#{content_tag}"], Resource.languages["#{language}"])
          else
            where("name iLIKE ? AND thematic_tag = ? AND content_tag = ? AND language = ?", "%#{search}%",Resource.thematic_tags["#{thematic_tag}"],Resource.content_tags["#{content_tag}"], Resource.languages["#{language}"])
          end
        end
      else
        if content_tag.blank?
          if thematic_tag.blank?
            where("name iLIKE ? AND contenttype = ? AND language = ?", "%#{search}%", Resource.contenttypes["#{contenttype}"], Resource.languages["#{language}"])
          else
            where("name iLIKE ? AND thematic_tag = ? AND contenttype = ? AND language = ?", "%#{search}%",Resource.thematic_tags["#{thematic_tag}"], Resource.contenttypes["#{contenttype}"], Resource.languages["#{language}"])
          end
        else
          if thematic_tag.blank?
            where("name iLIKE ? AND content_tag = ? AND contenttype = ? AND language = ?", "%#{search}%",Resource.content_tags["#{content_tag}"], Resource.contenttypes["#{contenttype}"], Resource.languages["#{language}"])
          else
            where("name iLIKE ? AND thematic_tag = ? AND content_tag = ? AND contenttype = ? AND language = ?", "%#{search}%",Resource.thematic_tags["#{thematic_tag}"],Resource.content_tags["#{content_tag}"], Resource.contenttypes["#{contenttype}"], Resource.languages["#{language}"])
          end
        end
      end
    end
  end

end
