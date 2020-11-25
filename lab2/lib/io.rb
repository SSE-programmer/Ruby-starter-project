require '../lib/string_constants'
require './calculate'

class Io
  include StringConstants

  def self.invalid_operation?(operation)
    operation != MAXIMUM && operation != MINIMUM && operation != AVERAGE && operation != DISPERSION
  end

  def self.invalid_path?(path)
    path.match(Regexp.new(/.(\.csv)$/)).nil?
  end

  def self.input_operation
    puts 'Enter operation [\'maximum\', \'minimum\', \'average\', \'dispersion\']'
    operation = gets.chomp.downcase

    if invalid_operation?(operation)
      puts 'Error: incorrect operation'
      exit
    end

    operation
  end

  def self.input_path
    puts 'Enter the correct path to the .csv file'
    path = gets.chomp.downcase

    if invalid_path?(path)
      puts 'Error: incorrect path'
      exit
    end

    path
  end

  def self.start
    operation = input_operation
    path = input_path

    puts Calculate.calculate(operation, path)
  end
end

Io.start
