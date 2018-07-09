describe Article do
  subject { described_class.new(data) }
  let(:data) { { id: 1, title: 'World Cup Final 2018', description: 'Football has finally come home...' } }

  context '#initialize' do
    it 'sets all the attributes' do
      expect(subject.id).to eq(data[:id])
      expect(subject.title).to eq(data[:title])
      expect(subject.description).to eq(data[:description])
    end
  end
end
