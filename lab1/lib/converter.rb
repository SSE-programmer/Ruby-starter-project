require './degree_constants'

class Converter
  include DegreeConstants

  def self.conversion_kelvin_to_fahrenheit(degree)
    ((degree - K) * 1.8 + 32).round(2)
  end

  def self.conversion_kelvin_to_celsius(degree)
    (degree - K).round(2)
  end

  def self.conversion_fahrenheit_to_celsius(degree)
    ((degree - 32) / 1.8).round(2)
  end

  def self.conversion_fahrenheit_to_kelvin(degree)
    ((degree - 32) / 1.8 + K).round(2)
  end

  def self.conversion_celsius_to_kelvin(degree)
    (degree + K).round(2)
  end

  def self.conversion_celsius_to_fahrenheit(degree)
    (degree * 1.8 + 32).round(2)
  end
end

puts Converter.conversion_kelvin_to_fahrenheit(0)
