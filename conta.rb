require_relative 'pessoa'
class Conta
    attr_reader :numero, :titular
    attr_accessor :saldo
    def initialize (numero,titular,saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
    end

    def sacar(valor)
        if saldo >= valor
        self.saldo -= valor
        else
            puts "Saldo insuficiente"
        end
    end

    def depositar(valor)
      self.saldo += valor
    end 

    def transferir(outra_conta, valor)
        if saldo >= valor
        sacar(valor)
        outra_conta.depositar(valor)
        else 
            puts "Não consegui transferir, saldo insuf"
        end
    end
end


conta_paulo = Pessoa.new("PAULO", "Prata")
conta = Conta.new(1,conta_paulo,300)

conta_maria = Pessoa.new("Maria", "Isaldina")
conta1 = Conta.new(2,conta_maria,500)
conta.transferir(conta1,400)


p "Paulo"
p conta.saldo

p "Maria"
p conta1.saldo

p conta1.sacar(500)