module Inputs
  def str_input(message: 'Enter your value', error: 'Wrong Value. Please try again')
    puts "\n"
    puts message
    str = gets.chomp
    loop do
      break if str.length.positive?

      puts error
      str = gets.chomp
    end
    str
  end

  def int_input(message: 'Enter your value', error: 'Wrong Value. Please try again')
    puts "\n"
    puts message
    int = gets.chomp
    loop do
      int = int.to_i
      break if int.positive?

      puts error
      int = gets.chomp
    end
    int
  end

  def bool_input(message: 'Enter your option (Y/N)', error: 'Wrong Value. Please try again')
    puts "\n"
    option = 'true'
    loop do
      puts message
      evaluate = gets.chomp.downcase
      case evaluate
      when 'n'
        option = 'false'
        break
      when 'y'
        break
      else
        puts error
      end
    end
    option
  end
end
