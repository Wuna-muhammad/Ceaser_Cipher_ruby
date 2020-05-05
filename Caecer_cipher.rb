# The Odin Project Exercise
# PROJECT: CAESAR CIPHER
# Done by Wuna Muhammad Muhammad
# 05 -May-2020.

print "Pls enter sentence to code: "
input = gets.chomp.downcase.split(//)
print "Pls enter shift factor (btw 1-11): "
shift_factor = gets.chomp.to_i

letter_to_number = {" " =>(-shift_factor), "a" => 1, "b" => 2, "c" => 3, "d" => 4,
  "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12,
  "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19,
  "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26}

number_to_letter = {0 => " ", 1 => "a", 2 => "b", 3 => "c", 4 => "d", 5 => "e",
  6 => "f", 7 => "g", 8 => "h", 9 => "i", 10 => "j", 11 => "k", 12 => "l",
  13 => "m", 14 => "n", 15 => "o", 16 => "p", 17 => "q", 18 => "r", 19 => "s",
  20 => "t", 21 => "u", 22 => "v", 23 => "w", 24 => "x", 25 => "y", 26 => "z",
  27 => "a", 28 => "b", 29 => "c", 30 => "d", 31 => "e", 32 => "f",
  33 => "g", 34 => "h", 35 => "i", 36 => "j", 37 => "k"}

special = "!~@#$%^&*()_\"\\\/><,.|][}{`?+='"

characters_to_code = []
input.each do |c|
  if String([*"!~@$#%^&*()_\"\\\/><,.|][}{`?+='"].join).include? c
    characters_to_code.push(c)
  else
    characters_to_code.push(letter_to_number[c].to_i + shift_factor)
  end
end

reverse = []
characters_to_code.each do |n|
  if String([*"!~@$#%^&*()_\"\\\/><,.|][}{`?+='"].join).include? n.to_s
    reverse.push(n)
  else
    reverse.push(number_to_letter[n])
  end
end

print reverse.join
