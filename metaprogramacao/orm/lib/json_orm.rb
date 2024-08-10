require 'json'
require 'byebug'

module JsonOrm
  def self.included(base)
    base.extend(AtributosMetodosClasse)
    base.extend(AtributosMetodosInstacia)
  end

  module AtributosMetodosClasse
    def arquivo_json(path_arquivo)
      @path_arquivo = path_arquivo
      define_atributos
    end 

    def todos

    end  

    private
    
    def define_atributos
      if File.exist?(@path_arquivo)
        # Lê o conteúdo do arquivo JSON
        arquivo_json = File.read(@path_arquivo)

        # Parseia o conteúdo do arquivo JSON
        dados = JSON.parse(arquivo_json)
        atributos = dados.first.keys.inspect

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
  end

  module AtributosMetodosDeInstancia
    def validar_nome
      raise "Nome é obrigatório" if self.nome == nil || self.nome == "" # raise => dispara um erro
    end
  end
end
  