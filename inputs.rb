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

  def index_in(array, message: 'Select by index', error: 'Index out of range. Try again')
    puts "\n"
    loop do
      index = int_input(message: message) - 1
      value = array[index]
      return index if value

      puts error
    end
  end

  def enter_date
    puts "\n"
    loop do
      puts 'Enter date in the following format YYYY/MM/DD'
      date = gets.chomp
      return date if date.match(%r{([0-9]){4}/[0-1][0-9]/[0-3][0-9]})

      puts 'Wrong input'
    end
  end
end
