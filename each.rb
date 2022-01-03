#Each no array
names =['Paulo','Samatnha']
name = 'Thamires Alice'

names.each do |name|
    puts name + ' é o meu nome'
end
puts name

#Each no Hash

aulas ={'aula 1'=> 'liberada', 'aula 2' => 'liberada', 'aula 3'=> 'liberada'}
aulas.each do |key, value|
    puts "#{key} #{value}"
end

#Map

array = [1,2,3,4]

puts "\n Executando .map multiplicando cada item por 2"
new_array = array.map do |item|
    item *2
end

puts "\n Array original"
puts "#{array}"
puts "\n Novo array"
puts "#{new_array}"

puts "\n Executando .map! multiplicando cada item por 2"
#.map! força que o conteúdo do array original seja alterado
array.map! do |item|
    item *2
end
puts "\n Novo array"
puts "#{new_array}"
puts ''

#Select
array = [1,2,3,4,5,6,7,8]
selection = array.select do |item|
    item >=4
end
puts "#{selection}"

hash = {0 => 'zero', 1 =>'um', 2 => 'dois', 3 => '3'}
selectt = hash.select do |key, value|
    key > 1

end
puts selectt

pessoa = {nome: 'Paulo', idade: 23}
pessoa ={}
pessoa[:nome] = "Paulo"
puts pessoa


