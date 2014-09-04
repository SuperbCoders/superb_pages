require 'carrierwave/orm/activerecord'

module SuperbPages
  # Model that stores page meta data
  class MetaBlock < ActiveRecord::Base
    mount_uploader :fb_image, SuperbPages::MetaFacebookImageUploader
    belongs_to :meta_blockable, polymorphic: true

    # Presents meta data as a hash with options for meta tags
    # @param host [String] current host. It should be passed because model knows nothing about it
    # @return [Hash] meta tags options
    def to_meta_tag_options(host = nil)
      meta_tags = { 'title' => title,
                    'description' => description,
                    'keywords' => keywords,
                    'og:title' => fb_title,
                    'og:description' => fb_description }
      meta_tags['og:image'] = "http://#{host}#{fb_image.url}" if host.present? && fb_image?
      meta_tags.select { |key, value| value.present? }
    end
  end
end
