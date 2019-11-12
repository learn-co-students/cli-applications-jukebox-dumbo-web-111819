def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each.with_index do |song,i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  req_song = gets.strip
  if req_song.to_i >= 1 && req_song.to_i <= songs.length
    puts "Playing #{songs[req_song.to_i-1]}"
  elsif songs.include?(req_song)
    puts "Playing #{req_song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
  return
end

def run(songs)
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

  keep_going = true
  while keep_going == true
    puts "Please enter a command:"
    respnd = gets.chomp
  
    if respnd == "help"
      help
    elsif respnd == "exit"
      keep_going = false
      exit_jukebox
    elsif respnd == "list"
      list(songs)
    elsif respnd == "play"
      play(songs)
    end
  end
end


