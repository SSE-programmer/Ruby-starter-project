require '../lib/string_constants'
require 'csv'

class Calculate
  include StringConstants

  def self.maximum(array)
    (array.max { |a, b| a.to_i <=> b.to_i }).to_f.round(2)
  end

  def self.minimum(array)
    (array.min { |a, b| a.to_i <=> b.to_i }).to_f.round(2)
  end

  def self.average(array)
    sum = 0.0
    array.each { |v| sum += v.to_i }
    (sum / array.size.to_f).round(2)
  end

  def self.dispersion(array)
    mean = average(array)
    sum = 0.0
    array.each { |v| sum += (v.to_f - mean)**2 }
    (sum / array.size).round(2)
  end

  def self.calculate(operation, filename)
    file = CSV.parse(File.read(filename), headers: true)
    array_values = file.by_col[1]
    case operation
    when MAXIMUM
      maximum(array_values)
    when MINIMUM
      minimum(array_values)
    when AVERAGE
      average(array_values)
    when DISPERSION
      dispersion(array_values)
    end
  end
end
