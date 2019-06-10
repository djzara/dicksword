require 'rspec'
require 'dickserver/dump'

describe 'Dump' do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context 'when condition' do
    it 'succeeds' do
      dumper = DickServer::Dump.new
      expect(dumper.hi).to eq('hi')
    end
  end
end