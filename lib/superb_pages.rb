module SuperbPages
  mattr_accessor :page_class_name
  mattr_accessor :meta_block_class_name

  self.page_class_name = 'Page'
  self.meta_block_class_name = 'MetaBlock'
end

require 'superb_pages/engine'
require 'superb_pages/meta_facebook_image_uploader'
require 'superb_pages/concerns/models/page'
require 'superb_pages/concerns/models/meta_block'
