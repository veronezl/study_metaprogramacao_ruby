# frozen_string_literal: true

class Exemplo
  def um_metodo
    puts 'Olá'
  end
end

class Exemplo
  def um_metodo_novo
    puts 'Olá novo'
  end
end

a = Exemplo.new
a.um_metodo
a.um_metodo_novo

class String
  def novo_metodo
    puts 'novo metodo da string'
  end
end

public

def maiusculo
  upcase
end

def minusculo
  downcase
end

s = '========== Olá Turma =========='
puts s.center(60, '=')
s.novo_metodo
''.novo_metodo

puts 'lucas'.maiusculo
puts 'LUCAS'.minusculo
