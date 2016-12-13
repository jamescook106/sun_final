class News < ActiveRecord::Base

  validates :title, presence:true
  validates :short, presence:true
  validates :long, presence:true

end
