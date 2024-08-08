# frozen_string_literal: true

module Atributos
  attr_accessor :id, :nome, :documento

  def mostrar_dados
    puts "#{id} - #{nome} - #{documento}"
  end
end

module MetodosDeClasse
  def metodo_total
    puts 'Oiiii...'
  end
end

class Cliente
  include Atributos
  extend MetodosDeClasse
end

class Fornecedor
  include Atributos
  extend MetodosDeClasse
end

c = Cliente.new
f = Fornecedor.new
# puts c.methods - Class.methods

# c.id = 1
# c.nome = 'Lucas'
# c.documento = '123456789'
# c.mostrar_dados

puts '=========== Instância de Cliente ==========='
puts c.methods - Class.methods
puts '=========== Instância de Fornecedor ==========='
puts f.methods - Class.methods

puts '=========== Classe de Cliente ==========='
puts Cliente.methods - Class.methods
puts '=========== Classe Fornecedor ==========='
puts Fornecedor.methods - Class.methods
