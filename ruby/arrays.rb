array = [10, 50, 29, 4]

#sss ou
# array = Array.new
# array.push(15)
# array.push(50)
# array.push(29)
# array.push(4)

array.each do|item|
  puts "Valor: " + item.to_s
end

array2 = [] # Srssy.new
array2.push(100)
array2.push('willian')
puts "\n\npós push \n\n"

array2.each do|item|
  puts "array2: " + item.to_s
end
