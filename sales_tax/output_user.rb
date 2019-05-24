class OutputUser

  def self.show_result(items, salestax, inputs, total_price_of_all)
    print "Output\n"
    current = 0
    for input in inputs
      last_index_of_space = input.rindex(' ')
      output = input[0..last_index_of_space] << items[current].final_cost.to_s
      print "#{output}\n"
      current += 1
    end
    print "sales tax is #{salestax.round(2)} \nTotal #{total_price_of_all.round(2)}"
  end
end