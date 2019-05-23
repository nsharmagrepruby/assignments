class FileService
  def create_file_input
    input_file = File.new('input.csv', 'w')
    (1..5).each do |i|
      input_file.puts "#{i},#{i * 2}"
    end
    input_file.close
  end

  def read_file
    output_file = File.new('output.csv', 'w')
    arr = IO.readlines('input.csv')
    arr.each do |string|
      number_char = string.split(',')
      multiply = number_char[0].to_i * number_char[1].to_i
      puts "#{number_char[0]}, #{number_char[1]}, #{multiply}"
      output_file.puts "#{number_char[0]}, #{number_char[1]}, #{multiply}"
    end
    output_file.close
  end

end


fileservice = FileService.new
# fileservice.create_file_input
fileservice.read_file
