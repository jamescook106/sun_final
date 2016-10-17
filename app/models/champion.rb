class Champion < ActiveRecord::Base

  has_attached_file :headshot
  do_not_validate_attachment_file_type :headshot

end
