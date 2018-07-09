require 'rails_helper'
require './lib/olio/client'

describe Olio::Client do
  subject { described_class.new(base_url) }
  let(:base_url) { 'https://s3-eu-west-1.amazonaws.com/olio-staging-images/developer/' }
  let(:request_url) { base_url + 'articles.json' }

  context '#get_articles' do
    context 'success' do
      let(:api_response) { RestClient::Response.new(file_fixture('articles_success.json').read) }
      let(:articles) { JSON.parse(api_response).map(&:deep_symbolize_keys) }

      before { allow(RestClient).to receive(:get).with(request_url).and_return(api_response) }

      it 'returns a success response with the articles' do
        response = subject.get_articles

        expect(response.success?).to eq(true)
        expect(response.details[:articles]).to eq(articles)
      end
    end

    context 'error' do
      context 'with an invalid base_url' do
        let(:api_response) { RestClient::Forbidden.new }

        before { allow(RestClient).to receive(:get).with(request_url).and_raise(api_response) }

        it 'returns an error response' do
          response = subject.get_articles

          expect(response.success?).to eq(false)
          expect(response.message).to eq('Something went wrong!')
        end
      end
    end
  end
end
