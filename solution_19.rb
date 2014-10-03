

require 'date'

require 'active_support'
require 'active_support/all'

today = Date.today
#Date.beginning_of_week = :monday
puts today.beginning_of_week.strftime('%a, %b %d, %Y')

#puts Date.beginning_of_week


    def date_in_30_days
      Date.today + 30.days
    end
      puts date_in_30_days

    def day_of_week_next_year
      d = Date.today + 365.days
      d.strftime('%A')
    end
      puts day_of_week_next_year

      print "Please enter your birthday:\n"

        b_day = Date.parse($stdin.gets.chomp)

      puts "your birthday falls on a #{b_day.strftime('%A')}."

#Using the String class, pluralize a singular word the user enters and show the singular for a plural word the user enters

      print "please enter a word to pluralize:\n"
        word = gets.chomp.pluralize
      puts word
      puts "the singular version of #{word} is #{word.singularize}."

#Using the String class, truncate a phrase the user enters to 20 letters
      print " please enter a phrase to begin (greater than 20 words):\n"
        phrase = gets.chomp.truncate(20)
      puts phrase

#Using the Array class, convert an array of three words to a sentence with one command
=begin
array = []

      print  "Enter three words to begin:"
        words = gets.chomp.split(",")
        array.push("#{words}")
        a = array
      puts a.to_sentence(locale: :es)
=end
      a = ["me," "myself", "I"]
      b = a
      puts b.to_sentence
