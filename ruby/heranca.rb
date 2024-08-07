class Pessoa
  attr_accessor :nome, :idade, :sexo

  def saudacao
    "Ola #{nome}"
  end


end

class Emprego < Pessoa
  attr_accessor :cargo, :salario

  def diz_emprego
    "Ola #{nome}, vc esta no cargo de #{cargo}"
  end
end

e1 = Emprego.new

e1.nome = "Willian"
e1.cargo = "Dev back"

puts e1.saudacao
puts e1.diz_emprego
