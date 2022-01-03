class Mercado 
    attr_reader :produto, :preco
    def initialize(produto,preco)
        @produto = produto
        @preco = preco
    end
 def comprar
    puts "Você comprou o produto #{produto} no valor de #{preco}"
 end
end