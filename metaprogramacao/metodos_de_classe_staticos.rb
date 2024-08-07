# frozen_string_literal: true

class MyClass
  def self.metodo_de_classse
    puts 'Eu sou um método de classe'
  end
end

MyClass.metodo_de_classse # => Eu sou um método de classe

def MyClass.metodo_dinamico
  puts 'Estou em método dinamico'
end

MyClass.metodo_dinamico # => Eu sou um método dinamico

class MyClass
  def self.metodo_dinamico2
    puts 'Eu sou um método de classe'
  end
end

MyClass.metodo_dinamico2

class MyClass
  class << self
    def outro_metodo_de_classe
      puts 'Eu sou outro método de classe'
    end
  end
end

puts '========================================='
puts MyClass.methods - Class.methods
