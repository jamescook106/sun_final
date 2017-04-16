class Country < ActiveRecord::Base

  has_attached_file :flag
  do_not_validate_attachment_file_type :flag
  has_attached_file :photo
  do_not_validate_attachment_file_type :photo

end
