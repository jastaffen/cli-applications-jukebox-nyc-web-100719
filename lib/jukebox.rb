# Add your code here
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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def prompt_user
  puts "Please enter a song name or number:"
end

def play(songs)
  prompt_user
  user_input = gets.strip
  if (1..songs.length).to_a.include?(user_input.to_i)
    num = (user_input.to_i - 1)
    puts "Playing #{songs[num]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index {|song, idx| puts "#{idx + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  while user_input
    if user_input == 'help'
      help
      puts "Please enter a command:"
      user_input = gets.strip
    elsif user_input == 'list'
      list(songs)
      puts "Please enter a command:"
      user_input = gets.strip
    elsif user_input == 'play'
      play(songs)
      puts "Please enter a command:"
      user_input = gets.strip
    elsif user_input == 'exit'
      exit_jukebox
      break
    end
  end
end
