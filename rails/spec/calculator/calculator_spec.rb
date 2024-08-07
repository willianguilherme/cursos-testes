require 'calculator'
describe Calculator, 'Calculadora' do # pode colocar "texto"; classe; ou classe, "texto"

  subject(:calc) { Calculator.new}

  context '#sum' do
    it 'with positive numbers' do
      result = calc.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'with negative numbers' do
      result = calc.sum(-5, -7)
      expect(result).to eq(-12)
    end

    it "with positeve and negative numbers" do

    end

  end
end

# xit deixa pendente um it / não é testado
