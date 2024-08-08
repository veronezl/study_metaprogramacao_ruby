class Pessoa
  %i[falar gritar].each do |acao|
    define_method acao do
      if acao.to_s == 'gritar'
        puts 'Estou gritando!'.upcase
      else
        puts 'Estou falando!'
      end
    end
  end
end

pessoa = Pessoa.new
pessoa.falar # Saída: Estou gritando!
pessoa.gritar # Saída: ESTOU GRITANDO!
