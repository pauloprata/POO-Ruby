

     #gato = Gato.new
   # puts gato.miar
   # puts gato.pular

    #Polimorfismo
    class Instrumento
        def escrever
            puts "Escrevendo"
        end
    end
    class Teclado < Instrumento
        puts "Tecladoooooooo"
         super
        end

    class Lapis < Instrumento
        def escrever
            puts "Escrevendo á lápis !!!!!"
        end
    end

    class Caneta < Instrumento
        def escrever
            puts "Escrevendo á caneta"
        end
    end

    teclado = Teclado.new
    lapis = Lapis.new
    caneta = Caneta.new

    puts "Lapis", lapis.escrever
    puts "caneta", caneta.escrever
    puts "Teclandoo", teclado.escrever


