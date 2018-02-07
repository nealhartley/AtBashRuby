class AtBash

  $CONSTANT = "abcdefghijklmnopqrstuvwxyz"
  $cipher = ""

  #takes just the cipher when initializing, we know what the constant alphabet is for this challenge
  # Wanted to make it somewhat reusable so at least the cipher is changeable
  # cipher is in the form of a 26 letter string where char at each indice should indicate its relation to the the
  # char at the same indice in the @CONSTANT
  def initialize(cipher)
    $cipher = cipher
  end

  #call this with String to decode and it will return the decoded version based on cipher sued to initialize
  def decypherString(decodeString)
    @decodedString = ""

    charArrayDecodeString = decodeString.chars

    charArrayDecodeString.each_with_index do |element,index|
      @decodedString += charSwap element
    end
    @decodedString
  end

  #helper function that swaps chars out
  def charSwap(char)

    @toReturn = char.to_s

    $cipher.chars.each_with_index do |element, index|
      if char == element
       @toReturn = $CONSTANT.chars[index]
      end
    end
    @toReturn.to_s
  end

end

# code that runs it with the variables used for the problem example
basher = AtBash.new("oephjizkxdawubnytvfglqsrcm")
puts basher.decypherString("knlfgnb, sj koqj o yvnewju")