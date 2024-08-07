# if
x = 30
if x > 30
  puts "IF: aior que 30"
else
    puts "IF: Menor ou igual que 30"
end

# unless: a menos que
unless x > 30
  puts "UNLESS: Maior que 30"
else
    puts "UNLESS: Menor ou igual que 30"
end

# case
idade = 29
case idade
when 0..2
  puts "bebe"
when 2..12
  puts "criança"
when 13..18
  puts "adolecente"
else
  puts "adulto"
end

# if ternario
valor = 20
puts (valor == 30 ? "é igual a 30" : "não é igual a 30")
