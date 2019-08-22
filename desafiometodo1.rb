
option = 0
while option != 'salir'
  puts '
  Bienvenido, porfavor escriba:

    jugar   - Genera 5 cartas al azar

    mostrar - Muestra las 5 cartas en pantalla

    salir   - Salir del programa'

option = gets.chomp.to_s.downcase

  def line_break
    puts '-----------------------------------------------------------------'
  end

  class Card
    @@cards = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
    @@suits = ['corazon', 'trebol', 'trebol', 'diamante']

    def self.random_card
      @hand = []
      5.times do
        @hand.push [@@cards.sample, @@suits.sample]
      end
      @hand.each_with_index do |cacards, index|
        puts "Tu carta numero #{index.to_i+1} es #{cacards}"
      end
    end

    def self.show_hand
      if @hand.nil?
        puts 'aun no has generado 5 cartas al azar, escribe jugar.'
      else
        @hand.each_with_index do |cacards, index|
          puts "Tu carta numero #{index.to_i+1} es #{cacards}"
        end
      end
    end
  end

  case option
  when 'jugar'
    line_break
    Card.random_card
    line_break
  when 'mostrar'
    line_break
    Card.show_hand
    line_break
  when 'salir'
    line_break
    puts 'Hasta pronto, sayonara, chaito.'
    line_break
  end
end
