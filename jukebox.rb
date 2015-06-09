require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# Your code here



def say_hello(name)
  "Hi #{name}!"
end
def get_name
  puts "Enter your name:"
  user_input = gets.chomp
end

def run(songs)
get_user_input(songs)
end
def play(songs)
    puts "please enter a song number to play"
    user_input = gets.strip

    if user_input.to_i.to_s == user_input
      if user_input.to_i > songs.length
        puts "Invalid input, please try again"       
      else
      puts "#{user_input}. #{songs[user_input.to_i-1]}"
      end
    else
      puts "Now Playing: #{user_input}"
    end   
end

def list(songs)
  counter = 0
    songs.each do |song|
      puts "#{counter+1}. #{song}"
      counter += 1
    end
end
def help
    puts "I accept the following commands"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
    
end
def exit_jukebox
  puts "Goodbye!"
end

def get_user_input(songs)
        puts "Please enter a command:"
        user_input = gets.strip
        user_input = user_input.downcase
      
    case user_input
          when "help"
              help
              get_user_input(songs)
          when "list"
              list(songs)
              get_user_input(songs)
          when "play"
              play(songs)
              get_user_input(songs)
          when "exit"  
              exit_jukebox
          else
            puts "please enter a command"
            user_input = gets.chomp
            user_input = user_input.downcase
    end
end #end get user input












run(songs)

