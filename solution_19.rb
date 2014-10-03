
require 'Date'

require 'active_support'
require 'active_support/all'
=begin
Create a new repository
Write a Ruby script that uses the Rails ActiveSupport gem, installed via a Gemfile and bundler
The script should do the following when run:

Show the date of the beginning of the current week
Show what the date will be in 30 days
Show what day of the week today's date will fall on next year
Show what day of the week the user's birthday will be on this year (don't forget to ask for it!)
Using the String class, pluralize a singular word the user enters and show the singular for a plural word the user enters
Using the String class, truncate a phrase the user enters to 20 letters
Using the Array class, convert an array of three words to a sentence with one command



=end
class << self
    attr_accessor :beginning_of_week_default

    def beginning_of_week
      Thread.current[:beginning_of_week] || beginning_of_week_default || :Monday
    end
end
      puts beginning_of_week


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
