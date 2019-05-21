puts "enter an array with seprated  by space you will get frequency of all char"
array=gets.chomp;
array=array.split(" ")
hashes = Hash.new()

puts array.size()
for subArray in array
	i=subArray.size
	j=0
	while j<i
		puts subArray[j]
		value=hashes[subArray[j]]
		puts "value", value	
			if value!=nil
				value=value+1
				hashes.store(subArray[j],value)
			else
				hashes.store(subArray[j],1)
			end
		j=j+1
		end
	
end
puts hashes
hashes.sort
