require './app'

def print_hello
  puts 'Welcome to School Library App!'
end

def print_message
  puts "\n"
  puts "Please choose an option by enterin a number:
  [1] - List all books
  [2] - List all people
  [3] - Create a person
  [4] - Create a book
  [5] - Create a rental
  [6] - List all rentals for a given person id
  [7] - Exit"
end

def run(selection, app)
  case selection
  when '1'
    app.list_all_books
  when '2'
    app.list_all_persons
  when '3'
    app.create_person
  when '4'
    app.create_book
  when '5'
    app.create_rental
  when '6'
    app.list_rentals
  else
    puts 'Wrong value. Try again'
  end
end

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
