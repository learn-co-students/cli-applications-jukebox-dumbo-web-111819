# Add your code here
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

def list(array)
  #count=1
  array.each_with_index do |element,index|
    puts "#{index+1}. #{element}"
    #count+=1
  end
end

def play(array)
  puts "Please enter a song name or number:"
  input=gets.strip
  if input.to_i == 0
    if array.include?(input)
      puts "Playing #{input}"
    else
      puts "Invalid input, please try again"
    end
  elsif input.to_i > 0 && input.to_i <=array.length
    puts "Playing #{array[input.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
end