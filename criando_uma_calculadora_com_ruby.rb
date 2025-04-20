def menu
  puts "\n=== CALCULADORA RUBY ==="
  puts "1 - Soma"
  puts "2 - Subtração"
  puts "3 - Multiplicação"
  puts "4 - Divisão"
  puts "0 - Sair"
  print "Escolha uma opção: "
end

def pegar_numeros
  print "Digite o primeiro número: "
  a = gets.to_f
  print "Digite o segundo número: "
  b = gets.to_f
  return a, b
end

loop do
  menu
  opcao = gets.chomp.to_i

  break if opcao == 0

  a, b = pegar_numeros

  case opcao
  when 1
    resultado = a + b
    puts "Resultado da soma: #{resultado}"
  when 2
    resultado = a - b
    puts "Resultado da subtração: #{resultado}"
  when 3
    resultado = a * b
    puts "Resultado da multiplicação: #{resultado}"
  when 4
    if b == 0
      puts "Erro: divisão por zero!"
    else
      resultado = a / b
      puts "Resultado da divisão: #{resultado}"
    end
  else
    puts "Opção inválida!"
  end

  print "\nDigite 0 para sair ou 1 para voltar ao menu: "
  continuar = gets.chomp.to_i
  break if continuar == 0
end

puts "\nPrograma encerrado. Até a próxima!"
