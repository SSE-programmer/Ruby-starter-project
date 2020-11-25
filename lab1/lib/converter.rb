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

  def self.conversion_from_kelvin(degree, final_scale)
    case final_scale
    when CELSIUS
      conversion_kelvin_to_celsius(degree)
    when FAHRENHEIT
      conversion_kelvin_to_fahrenheit(degree)
    end
  end

  def self.conversion_from_fahrenheit(degree, final_scale)
    case final_scale
    when CELSIUS
      conversion_fahrenheit_to_celsius(degree)
    when KELVIN
      conversion_fahrenheit_to_kelvin(degree)
    end
  end

  def self.conversion_from_celsius(degree, final_scale)
    case final_scale
    when KELVIN
      conversion_celsius_to_kelvin(degree)
    when FAHRENHEIT
      conversion_celsius_to_fahrenheit(degree)
    end
  end

  def self.conversion(degree, initial_scale, final_scale)
    return degree if initial_scale == final_scale

    case initial_scale
    when CELSIUS
      conversion_from_celsius(degree, final_scale)
    when FAHRENHEIT
      conversion_from_fahrenheit(degree, final_scale)
    when KELVIN
      conversion_from_kelvin(degree, final_scale)
    end
  end
end

puts Converter.conversion_kelvin_to_fahrenheit(0)
