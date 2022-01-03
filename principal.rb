class Sensor 
    def instalar
        puts "EStou instalando o sensor"
    end
    def iniciar 
        puts "estou iniciando o sensor"
    end
    def coletar_metricas 
        puts "estou coletando"
        puts "estou analizando"
    end
    
end
class SensorTemperatura < Sensor
    def coletar_metricas
        puts "estou coletando metricas de temperatura"
        super
    end
end
sensor = SensorTemperatura.new
sensor.iniciar
sensor.instalar
sensor.coletar_metricas