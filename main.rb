require './app'

rubocop:disable Metrics/CyclomaticComplexity
def main
  app = App.new
  execute = true

  puts "\nWelcome to School Library App!"

  while execute
    options = [
      '',
      ' 1 - List all books',
      ' 2 - List all people',
      ' 3 - Create a person',
      ' 4 - Create a book',
      ' 5 - Create a rental',
      ' 6 - List all rentals a given person id',
      ' 7 - Exit',
      ''
    ]
    puts "\nPlease choose an option by entering a number:"
    puts options
    print 'Answer: '
    option = gets.chomp
    case option
    when '1'
      app.list_all_books
    when '2'
      app.list_all_people
    when '3'
      app.create_person
    when '4'
      app.create_book
    when '5'
      app.create_rental
    when '6'
      app.list_all_rentals
    else
      puts 'Goodbye!'
      execute = false
    end
  end
end

main
