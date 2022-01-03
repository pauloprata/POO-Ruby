#require './nomedoarquivo'
require_relative 'produto'
require_relative 'mercado'
#require_relative 'animal'

produto =Produto.new
produto.nome ="Tomate"
produto.preco =3.50
Mercado.new(produto.nome,produto.preco).comprar

