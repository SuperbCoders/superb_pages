require 'carrierwave/orm/activerecord'

module SuperbPages
  # Model that stores page meta data
  class MetaBlock < ActiveRecord::Base
    mount_uploader :fb_image, SuperbPages::MetaFacebookImageUploader
    belongs_to :meta_blockable, polymorphic: true
  end
end
