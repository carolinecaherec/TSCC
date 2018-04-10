# chiffre césar
ALPHABET_SIZE = 2

def caesar_cipher(string)
  shiftyArray = []
  hello = string.chars.map(&:ord)

  shift = 2
  ALPHABET_SIZE.times do |shift|
    shiftyArray << hello.map do |c|
      ((c + shift) < 123 ? (c + shift) : (c + shift) - 2).chr
    end.join
  end

  shiftyArray
end

puts caesar_cipher("hello")
