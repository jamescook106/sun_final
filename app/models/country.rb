class Country < ActiveRecord::Base

  enum region: { ASIA: 0, WEST_AFRICA: 1, SOUTH_EAST_AFRICA: 2, LATIN_AMERICA: 3}

  has_attached_file :flag
  do_not_validate_attachment_file_type :flag
  has_attached_file :photo
  do_not_validate_attachment_file_type :photo

end
