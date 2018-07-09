require 'rails_helper'

describe LikesController, type: :controller do
  describe '#create' do
    context 'success' do
      let(:article_id) { 1 }

      it 'the like is created' do
        expect do
          post :create, params: { like: { article_id: article_id } }
        end.to change { Like.count }.by(1)

        expect(Like.last.article_id).to eq(article_id)
      end
    end

    context 'error' do
      context 'without an article_id' do
        it 'the like is not created' do
          expect do
            post :create, params: { like: { article_id: nil } }
          end.not_to change { Like.count }
        end
      end
    end
  end
end
