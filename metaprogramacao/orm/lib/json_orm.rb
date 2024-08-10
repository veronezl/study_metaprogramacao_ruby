require 'json'
require 'byebug'

module JsonOrm
  def self.included(base)
    base.extend(EstruturaDados)
  end

  module EstruturaDados
    def arquivo_json(path_arquivo)
      @path_arquivo = path_arquivo
      define_atributos
    end 
    
    def define_atributos
      if File.exist?(@path_arquivo)
        # Lê o conteúdo do arquivo JSON
        arquivo_json = File.read(@path_arquivo)

        # Parseia o conteúdo do arquivo JSON
        dados = JSON.parse(arquivo_json)
        debugger
        puts dados.keys.first.inspect
      end
    end
  end
end
  