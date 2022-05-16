require './app'
require './menu'
require './run'

def main
  app = App.new
  print_hello
  loop do
    print_message
    selection = gets.chomp
    puts 'Thank you for using this app!' if selection == '7'
    break if selection == '7'

    run(selection, app)
  end
end

main
