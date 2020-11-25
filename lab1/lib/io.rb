require './converter'
require './degree_constants'

class Io
  include DegreeConstants

  def self.invalid_scale?(scale)
    FAHRENHEIT != scale && KELVIN != scale && CELSIUS != scale
  end

  def self.input_degree
    puts 'Enter degree: '
    degree = gets.chomp

    if degree.match(Regexp.new(/\d(\.\d+)?/)).nil?
      puts 'Error: incorrect number format'
      exit
    end

    degree.to_f
  end

  def self.input_base_scale
    puts 'Enter initial scale(C, K, F): '
    start_scale = gets.chomp.upcase

    if invalid_scale?(start_scale)
      puts 'Error: incorrect initial scale'
      exit
    end

    start_scale
  end

  def self.input_result_scale
    puts 'Enter finish scale(C, K, F): '
    end_scale = gets.chomp.upcase

    if invalid_scale?(end_scale)
      puts 'Error: incorrect finish scale'
      exit
    end

    end_scale
  end

  def self.start
    degree = input_degree
    initial_scale = input_base_scale
    finish_scale = input_result_scale

    result = Converter.conversion(degree, initial_scale, finish_scale)

    puts "#{degree}°#{initial_scale} = #{result}°#{finish_scale}"
  end
end

Io.start
