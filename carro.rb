class Car

    #lendo os atributos
    attr_reader :marca, :modelo, :cor
    attr_writer :cor

   #construtor começa com nome initialize
    def initialize(marca,modelo,cor)
        @marca = marca
        @modelo = modelo
        @cor = cor
    end
   
    def check
        puts "Instancia da classe iniciada com os valores"
        puts " Marca = #{marca}"
        puts "Modelo = #{modelo}"
        puts "Cor = #{cor}"
    end
end


onix = Car.new(:chevrolet,:corsa,:preto)
onix.cor = :vermelho
puts onix.check





