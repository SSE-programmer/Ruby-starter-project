require './lib/hello_world'

RSpec.describe HelloWorld do
  describe '#hello' do
    subject { HelloWorld.new.hello }

    it { is_expected.to eq 'world' }
  end
end
