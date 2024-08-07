class Pessoa
  attr_accessor :nome

  # mesmo
  # def initialize(nome)
  #   @nome = nome
  # end

  # def set_nome=(nome)
  #   @nome = nome
  # end

  # def get_nome
  #   @nome
  # end


end

p1=Pessoa.new("Guilherme")

puts p1.nome
p1.nome = "Willian"
puts p1.nome
