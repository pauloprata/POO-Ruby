#Lambda
firs_lambda = -> {puts "Minha lambda"}
firs_lambda.call

firs_lambda1 = -> (names){names.each {|name|puts name}}
names =["Paulo","Samantha","Thamires"]
firs_lambda1.call(names)

#Lambda de multiplas linhas
my_lambda = lambda do |numbers|
    index = 0
    puts "Numero atual + Próximo número"
    numbers.each do |number|
        return if numbers[index] == numbers.last
        puts "(#{numbers[index]}) + (#{numbers[index+1]})"
        puts numbers[index] + numbers[index+1]
        index +=1
    end
end
numbers = [1,2,3,4]
my_lambdad.call(numbers)


#passando argumentos nas lambdas
def foo(first_lambda, second_lambda)
    first_lambda.call
    second_lambda.call
   end
    
   first_lambda = lambda { puts "my first lambda"}
   second_lambda = lambda { puts "my second lambda"}
    
   foo(first_lambda, second_lambda)