require 'rails_helper'

describe Like, type: :model do
  describe 'validations' do
    context 'article_id' do
      subject { described_class.new }

      it 'is invalid without an article_id' do
        expect(subject).not_to be_valid
      end

      it 'is valid with an article_id' do
        subject.article_id = 1

        expect(subject).to be_valid
      end
    end
  end
end
