require 'csv'

class MultiplyByCsv
  def calculation
    table = CSV.read('created.csv')
    CSV.open('output.csv', 'wb') do |row|
      table.each do |i|
        n = (i[0].to_i * i[1].to_i).to_s
        row << [i[0], i[1], n]
      end
    end
  end
end

multiply = MultiplyByCsv.new
multiply.calculation
