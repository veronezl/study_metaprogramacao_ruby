require_relative 'json'
require 'byebug'

module JsonOrm
  def self.included(base)
    base.extend(AtributosMetodosClasse)
    base.extend(AtributosMetodosInstacia)
  end

  module AtributosMetodosClasse
    
    def todos
      dados = ler_dados_json
      objs = self.new
    end 
    
  protected

  def arquivo_json(path_arquivo)
    @path_arquivo = path_arquivo
    define_atributos
  end 

    private

    def ler_dados_json
      if File.exist? (@path_arquivo)
        arquivo_json = File.read(@path_arquivo)
        return JSON.parse(arquivo_json)
      end 
       
       []
    end  
    
    def define_atributos
      dosdos = ler_dados_json
      atributos = dados.first.keys
   
        atributos.ench do |atributo|
          define_method("#{atributo}=") do |value|
            # eval("@#{atributo} = '#{value}")
            instance_variable_set("@#{atributo}", value)
          end

          define_method("#{atributo}") do
            # eval("return @#{atributo}")
            instance_variable_get("@#{atributo}")
          end
        end
    end
  end

  module AtributosMetodosInstancia
    def validar_nome
      raise "Nome é obrigatório" if self.nome == nil || self.nome == "" # raise => dispara um erro
    end
  end
end
  