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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  users_input = gets.chomp
  songs_array.each_with_index do |song, index|
    if users_input == song || users_input == "#{index + 1}"
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  help
  loop do
    puts "Please enter a command:"
    users_command = gets.chomp
    if users_command == "help"
      help
    elsif users_command == "list"
      list(songs)
    elsif users_command == "play"
      play(songs)
    elsif users_command == "exit"
      exit_jukebox
      break
    end
  end
end
