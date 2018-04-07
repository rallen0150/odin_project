def caesar_cipher(phrase, anyshift)
  shift = anyshift % 26
  output = phrase.split("")
  output.map! do |letter|
    if letter.ord.between?('A'.ord, 'Z'.ord)
      letter = letter.ord + shift <= 'Z'.ord ? (letter.ord + shift).chr : (letter.ord + shift - 26).chr
    elsif letter.ord.between?('a'.ord, 'z'.ord)
      letter = letter.ord + shift <= 'z'.ord ? (letter.ord + shift).chr : (letter.ord + shift - 26).chr
    else
      letter
    end
  end
  output.join("")
end

puts caesar_cipher("What a string!", 5)
