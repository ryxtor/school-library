require './app'
require './menu'
require './run'
require './exit_app'
def main
  app = App.new
  print_hello
  loop do
    print_message
    selection = gets.chomp
    exit_app if selection == '7'
    puts 'Thank you for using this app!' if selection == '7'
    break if selection == '7'

    run(selection, app)
  end
end

main
