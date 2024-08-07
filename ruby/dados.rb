puts "Digite seu nome: "
# nome = gets
nome = "Willian"

# #chomp retira o \n do fim da string
nome.chomp

# inspect permite ver o real valor da variavel
puts nome.inspect


# coerção: muda a interpretação do tipo da variavel
x = gets.to_i
puts x.class
