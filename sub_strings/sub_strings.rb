dictionary = %w[
  below
  down
  go
  going
  horn
  how
  howdy
  it
  i
  low
  own
  part
  partner
  sit
]

def substrings(string, dict_array)
  substring = Hash.new(0)
  user_input = string.split(" ")

  user_input.each do |user_word|
    dict_array.each do |word|
      substring[word] = substring[word] + 1 if user_word.downcase.include?(word)
    end
  end

  puts substring
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
