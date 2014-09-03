require 'spec_helper'

RSpec.describe SuperbPages::PagesController, type: :controller do
  describe 'GET show' do
    let(:action) { get :show, id: page.slug }

    context 'page is published' do
      let(:page) { FactoryGirl.create(:page) }
      it 'responds with success code' do
        expect(action).to be_success
      end
    end

    context 'page is not published' do
      let(:page) { FactoryGirl.create(:page, published: false) }
      it 'raises error' do
        expect{ action }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end
end
