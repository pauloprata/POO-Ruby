#blocosss
sum =0
number =[10,5,5]

number.each {|number|sum+= number}
puts sum

#block de muitas linhas

foo = {2 =>3, 4=>5 }

foo.each do |key, value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key e value = #{key + value}"
    puts "------"
end

def foo
    if block_given?
    #yield executa um método que foi passado como parametro
    yield
    else 
        puts "Sem parametro do tipo bloco"
    end
end
foo
#foo {puts "Com a parametro"}

#passando bloco como parametro, tem que usar o call
def foo1 (numbers, &block)
    if block_given?
        numbers.each do |key, value|
            block.call(key,value)
        end
    end
end
numbers = {2=>2,3=>3,4=>4}
foo1(numbers) do |key ,value|
    puts "#{key} * #{value} = #{key * value}"
    puts "#{key} + #{value} = #{key + value}"
    puts "---------"
end

