# frozen_string_literal: true

# This method checks if a string contains valid parentheses () only.
def valid_parentheses?(string)
  balance = 0

  string.each_char do |char|
    if char == '('
      balance += 1
    elsif char == ')'
      balance -= 1
      return false if balance < 0 # closing before an opening
    end
  end

  balance.zero?
end

# This method checks for valid combinations of (), [], and {} brackets.
def valid_brackets?(string)
  pairs = { ')' => '(', ']' => '[', '}' => '{' }
  openers = "([{"
  stack = []

  string.each_char do |char|
    if openers.include?(char)
      stack << char
    elsif pairs.key?(char)
      return false if stack.empty? || stack.pop != pairs[char]
    end
  end

  stack.empty?
end
