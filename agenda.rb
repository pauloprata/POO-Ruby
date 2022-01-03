
@agenda = [{nome: "Paulo", telefone: "998408962"},
    {nome: "Thamires", telefone: "87896876697"}

]
def todos_contatos 
    @agenda.each do |contato|
        puts "#{contato[:nome]} - #{contato[:telefone]}"
end
puts "-----------------"
end
def adicionar_contato
   print " Nome "
   nome = gets.chomp
   print "Contato"
   telefone = gets.chomp

   @agenda << {nome: nome, telefone: telefone}

end

def ver_contato
  print "Qual nome você deseja! "
  nome = gets.chomp

  @agenda.each do |contato|
    if contato[:nome].downcase == (nome.downcase)
        puts "#{contato[:nome]} - #{contato[:telefone]}"
        break
    end
 end
  puts "------------------------------"
end

def editar_contato 
    print "QUal nome deseja editar"
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase == (nome.downcase)
            print "Nome para editar, digite enter para manter o nome"
            nome_salvo = contato[:nome]
            
            contato[:nome]= gets.chomp
            contato[:nome] = contato[:nome].empty? ? nome_salvo : contato[:nome]
        
            print "Telefone para editar, digite enter para manter o nome"
            telefone_salvo =contato[:telefone]

            contato[:telefone]= gets.chomp
            contato[:telefone] = contato[:telefone].empty? ? telefone_salvo : contato[:telefone]
        end
    end 
end

loop do
puts "1 Contatos"
puts "2 Adicionar Contato"
puts "3 Ver Contato"
puts "4 Editar Contato"
puts "5 Remover Contato"
puts "0 Sair"

opcoes = gets.chomp.to_i
case opcoes
when 0
    puts "Até mais"
    break
when  1
    todos_contatos
when  2
    adicionar_contato
when 3
  ver_contato
when 4 
    editar_contato
 end
end