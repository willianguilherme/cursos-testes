class Pessoa2

  def initialize(nome_fornecido = "indigente")
    @nome = nome_fornecido
  end

  def falar(nome = "")
    "Ola, #{nome}"
  end

  def id
    "Meu id #{self.object_id}"
  end

  def imprime_nome
    @nome
  end
end

p1 = Pessoa2.new("Willian")

p2 = Pessoa2.new

puts p1.id
puts p2.id

puts p1.imprime_nome
puts p2.imprime_nome
