require_relative 'morse_code'

def decode(morse)
  reverse_code = MORSE_CODE.invert
  words = morse.split("|")
  decoded_words = words.map do |word|
    letters = word.split(" ").map { |symbol| reverse_code[symbol] }
    letters.join
  end
  decoded_words.join(" ")
end

puts decode(".... ..|--. ..- -.-- ...")   # => "HI GUYS"
