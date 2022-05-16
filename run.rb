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