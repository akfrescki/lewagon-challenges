require_relative 'morse_code'

def encode(text)
  words = text.upcase.split(" ")
  morse_words = words.map do |word|
    letters = word.chars.map { |char| MORSE_CODE[char] }.compact
    letters.join(" ")
  end
  morse_words.join("|")
end

puts encode("Hi Guys")   # => ".... ..|--. ..- -.-- ..."
