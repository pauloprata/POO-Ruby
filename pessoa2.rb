class Pessoa
    attr_accessor :nome,:sobreNome #getter e setter
    #attr_reader :nome #apenas getter
    #attr_writter :nome #apenas getter
    def initialize(nome, sobreNome)
        @nome = nome
        @sobreNome = sobreNome
    end
    def imprimir_ola
        puts "ola #{nome}"
    end
   
end
