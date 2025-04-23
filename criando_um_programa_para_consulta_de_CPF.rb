require "cpf_cnpj"
# Função para validar o CPF
loop do
  puts "------CONSULTA CPF/CNPJ------"
  puts "Digite o CPF ou CNPJ (sem pontos nerm traço)para consulta: "
  cpf_cnpj = gets.chomp
  if CPF.valid?(cpf_cnpj)
    puts "O CPF #{cpf_cnpj} é válido."
  else
    puts "O CPF #{cpf_cnpj} é inválido."
  end
  puts "Deseja continuar para mais consultas? (s/n)"
  continuar = gets.chomp.downcase
  break if continuar != "s"
end
puts "Obrigado por usar o programa de consulta de CPF/CNPJ!"
