class Page < ActiveRecord::Base
  belongs_to :comic

  mount_uploader :page_image, PageImageUploader
end
