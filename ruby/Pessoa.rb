class Pessoa

  def initialize()
    puts "Inicializando"
  end

  def falar(nome = "")
    "Ola, #{nome}"
  end
end
