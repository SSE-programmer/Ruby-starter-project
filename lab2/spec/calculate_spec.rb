require '../lib/calculate'

RSpec.describe Calculate do
  describe 'calculate' do
    path = 'data/stats2019.csv'

    context 'maximum' do
      it { expect(Calculate.calculate('maximum', path)).to eq 104_680 }
    end

    context 'minimum' do
      it { expect(Calculate.calculate('minimum', path)).to eq 4180 }
    end

    context 'average' do
      it { expect(Calculate.calculate('average', path)).to eq 33_316.45 }
    end

    context 'dispersion' do
      it { expect(Calculate.calculate('dispersion', path)).to eq 1_245_476_693.79 }
    end
  end
end
