base_array = []

puts "DIGITE 3 NUMEROS PARA SEREM ELEVADOS A TERCEIRA POTÊNCIA."
while base_array.length < 3
  puts "Digite o número: #{base_array.length + 1}"
  base_array << gets.to_i
end

elevated_array = base_array.map { |base| base.to_i ** 2 }

puts "O array com números elevados a terceira portência é: #{elevated_array}"
