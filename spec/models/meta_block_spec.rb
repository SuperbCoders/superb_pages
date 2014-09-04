require 'spec_helper'

RSpec.describe SuperbPages::MetaBlock, type: :model do

  describe '#to_meta_tag_options' do
    let(:meta_block) { FactoryGirl.build(:meta_block) }
    let(:expected_result) { { 'title' => 'Meta title',
                              'description' => 'Meta description',
                              'keywords' => 'keyword 1, keyword 2',
                              'og:title' => 'Title for Facebook',
                              'og:description' => 'Description for Facebook' } }

    it 'converts meta block to options hash' do
      expect(meta_block.to_meta_tag_options).to eq(expected_result)
    end
  end

end