require_relative '../config/environment.rb'
def main
  puts "What type of crawl are you looking for? "
  type = gets.strip

  puts "How many places would you like to stop at? "
  stop_number = gets.strip.to_i

  google = GoogleAPI.new
  google.find_first_spot(type)

end

main