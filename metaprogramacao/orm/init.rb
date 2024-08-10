require_relative './models/produto'

prod = Produto.new

puts "=== Métodos e atributos de intâncias ==="
puts p.methods - Class.methods
puts "=== Métodos e atributos de classe ==="
puts Produto.methods - Class.methods

p.nome = 'Abacaxi'
puts p.inspect

