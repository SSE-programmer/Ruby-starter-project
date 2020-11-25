require './../lib/converter'

RSpec.describe Converter do
  describe 'conversion_kelvin_to_fahrenheit' do
    context 'convertion kelvin to fahrenheit' do
      it { expect(Converter.conversion_kelvin_to_fahrenheit(0)).to eq -459.67 }
    end
  end

  describe 'conversion_kelvin_to_celsius' do
    context 'convertion kelvin to celsius' do
      it { expect(Converter.conversion_kelvin_to_celsius(0)).to eq -273.15 }
    end
  end

  describe 'conversion_fahrenheit_to_celsius' do
    context 'convertion fahrenheit to celsius' do
      it { expect(Converter.conversion_fahrenheit_to_celsius(0)).to eq -17.78 }
    end
  end

  describe 'conversion_fahrenheit_to_kelvin' do
    context 'convertion fahrenheit to kelvin' do
      it { expect(Converter.conversion_fahrenheit_to_kelvin(0)).to eq 255.37 }
    end
  end

  describe 'conversion_celsius_to_kelvin' do
    context 'convertion celsius to kelvin' do
      it { expect(Converter.conversion_celsius_to_kelvin(0)).to eq 273.15 }
    end
  end

  describe 'conversion_celsius_to_fahrenheit' do
    context 'convertion celsius to fahrenheit' do
      it { expect(Converter.conversion_celsius_to_fahrenheit(0)).to eq 32.0 }
    end
  end

  describe 'converter' do
    context 'celsius to fahrenheit' do
      it { expect(Converter.conversion(0, 'C', 'F')).to eq 32.0 }
    end

    context 'celsius to kelvin' do
      it { expect(Converter.conversion(0, 'C', 'K')).to eq 273.15 }
    end

    context 'fahrenheit to celsius' do
      it { expect(Converter.conversion(0, 'F', 'C')).to eq(-17.78) }
    end

    context 'fahrenheit to kelvin' do
      it { expect(Converter.conversion(0, 'F', 'K')).to eq 255.37 }
    end

    context 'kelvin from celsius' do
      it { expect(Converter.conversion(0, 'K', 'C')).to eq(-273.15) }
    end

    context 'kelvin from fahrenheit' do
      it { expect(Converter.conversion(0, 'K', 'F')).to eq(-459.67) }
    end
  end
end
