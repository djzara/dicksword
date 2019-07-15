require 'rspec'
require 'dickserver/dump'
require 'dickserver/output'

describe 'Dump' do
  before do
    @dumper = Dump::Channel.new(channel_name='my channel')
  end

  after do
    # Do nothing
  end

  context 'on new channel dump' do
    it 'creates with channel name' do

      expect(@dumper.channel_name).to eq('my channel')
    end
    it 'creates with default formatter' do
      expect(@dumper.formatter).to be_a_kind_of Output::Formatter
    end
  end

  context 'raises error if not formatter' do
    it 'raises a TypeError' do
      expect{@dumper.formatter = 123}.to raise_error(TypeError)
    end
    it 'does not raise a type error' do
      expect{@dumper.formatter = Output::JsonFormatter.new}.to_not raise_error
    end
  end
end