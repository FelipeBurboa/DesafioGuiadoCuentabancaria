class Carta
    attr_accessor :numero , :pinta
    def initialize(numero, pinta)
        @numero = numero
        case pinta
        when 'C'
            @pinta = 'Corazon'
        when 'D'
            @pinta = 'Diamante'
        when 'E'
            @pinta = 'Espada'
        when 'T'
            @pinta = 'Trebol'
        end
    end
end

pintas = ['C', 'D', 'E', 'T']
cartas = []

5.times { 
    carta = Carta.new(rand(1..13),pintas.sample)
    cartas.push(carta)
 }

#print cartas
cartas.each do |carta|
    puts "Numero: #{carta.numero} - Pinta: #{carta.pinta}"
end

