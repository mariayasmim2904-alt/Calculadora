loop do
  puts "\nEscolha uma opção:"
  puts "1 - Soma"
  puts "2 - Subtração"
  puts "3 - Multiplicação"
  puts "4 - Divisão"
  puts "0 - Sair"
  print "Opção: "

  opcao = gets.chomp

  if opcao == "0"
    puts "Até mais!"
    break
  elsif ["1", "2", "3", "4"].include?(opcao)
    print "Digite o primeiro número: "
    numero1 = gets.chomp.to_f

    print "Digite o segundo número: "
    numero2 = gets.chomp.to_f

    case opcao
    when "1"
      resultado = numero1 + numero2
      puts "Resultado: #{resultado}"
    when "2"
      resultado = numero1 - numero2
      puts "Resultado: #{resultado}"
    when "3"
      resultado = numero1 * numero2
      puts "Resultado: #{resultado}"
    when "4"
      if numero2 == 0
        puts "Erro: não é possível dividir por zero."
      else
        resultado = numero1 / numero2
        puts "Resultado: #{resultado}"
      end
    end
  else
    puts "Opção inválida. Tente novamente."
  end
end
