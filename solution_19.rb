<<<<<<< HEAD

require 'date'

require 'active_support'
require 'active_support/all'


Date.beginning_of_week = :monday
puts Date.beginning_of_week


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
=======
=begin
# Assignment 19
* Create a new repository
* Write a Ruby script that uses the Rails ActiveSupport gem, installed via a Gemfile and bundler
* The script should do the following when run:
=end
require 'date'
require 'active_support/all'
require 'active_support/duration'
require 'active_support/core_ext/object/acts_like'
require 'active_support/core_ext/date/zones'
require 'active_support/core_ext/time/zones'
require 'active_support/core_ext/date_and_time/calculations'
#1. Show the date of the beginning of the current week
print "Date of the beginning  of the current week:"
puts Date.beginning_of_week=(:monday)

#2. Show what the date will be in 30 days
print "In 30 days the Date will be:"
puts Date.current + 30.days

#3. Show what day of the week today's date will fall on next year
print "Next year, today's date will be:"
puts  Date.current + 1.years

#4. Show what day of the week the user's birthday will be on this year (don't forget to ask for it!)
print "When is your Birthday this year? (2014-MM-DD):\n"
  birthdate = Date.parse($stdin.gets.chomp)
  next_year = birthdate + 1.year
puts "Next year your Birthday will be on #{next_year}!"

#5. Using the String class, pluralize a singular word the user enters and show the singular for a plural word the user enters
print "I can Pluralize what ever word you type, try me?\n"
  plural_word = $stdin.gets.chomp
  pluralize_word = plural_word.pluralize
puts "The plural word you entered was: #{plural_word.capitalize}\nIt is now pluralized: #{pluralize_word.capitalize}!"

#6. Using the String class, truncate a phrase the user enters to 20 letters
print "What is the hardest thing you had to accomplish?\n"
  accomplish = $stdin.gets.chomp
  accomplish.truncate(20, separator:' ')
puts "#{accomplish.truncate(20, separator:' ')}..sorry, we had to cut you short."
#7. Using the Array class, convert an array of three words to a sentence with one command
puts %w(You Ran Fast).to_sentence
>>>>>>> 8a91ffe539c097970e984f4d33767e607a9b362a
