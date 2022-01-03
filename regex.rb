texto = "Olá, tudo bem? meu whatsapp é (99) 77 4321-1234"
#regex pegando o numero de telefone do texto
match = /\(\d{2}\) \d{2} \d{4}-\d{4}/.match(texto)
puts match

class Carro 
    def get_km(frase)
        km = find_km(frase)
        puts km
    end

    private
    def find_km(frase)
        /\d{2,}km\/h/.match(frase)
    end
        
end
frase= "'e um fusca de cor amarela a 80km/p"
car = Carro.new
car.get_km(frase)



