# frozen_string_literal: true

class MinhaClasse
end

MinhaClasse.class_eval do
  def meu_metodo
    puts 'Este é um novo método da classe MinhaClasse'
  end
end

obj = MinhaClasse.new
obj.meu_metodo
