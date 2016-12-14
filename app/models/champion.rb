class Champion < ActiveRecord::Base

  has_attached_file :headshot, :storage => :s3
  do_not_validate_attachment_file_type :headshot

end
