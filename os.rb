#gem 
#gem bandlle
require 'os'

def my_os
    if OS.windows
        "Windows"
    elsif OS.linux?
        "Linux"
    elsif OS.mac?
        "Mac"
    else
        "Não consegui identificar"
    end
end
puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}"
def teste (*parametros)
   return 1 if parametros.include?2
   1 + 420 - 3
   rescue Exception => e
    puts "Opa aconteceu um erro"
    puts e.message
end
a = teste 1,2,3,4,5,6,7,8
puts a
