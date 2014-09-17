module SuperbPages
  module Concerns
    module Models
      module Page
        extend ActiveSupport::Concern

        included do
          has_one :meta_block, as: :meta_blockable, dependent: :destroy, class_name: SuperbPages.meta_block_class_name

          validates :slug, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z0-9_-]+\z/ }
          validates :title, presence: true

          accepts_nested_attributes_for :meta_block

          scope :published, -> { where(published: true) }  
        end
        
      end
    end
  end
end
