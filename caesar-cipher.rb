def caesar_cipher(text, shift)
  standard_key_caps = ("A".."Z").to_a
  standard_key_lower = ("a".."z").to_a

  i=shift
  shift_key_caps = []
  range = ('A'..'Z').to_a
  range.each do |x|
    shift_key_caps[i] = x
    i+=1
    i=0 if i >= 26
  end

  i=shift
  shift_key_lower = []
  range = ('a'..'z').to_a
  range.each do |x|
    shift_key_lower[i] = x
    i+=1
    i=0 if i >= 26
  end

  text_mod = ""
  text.each_char do |x|
    character = x
    if standard_key_caps.include?(x)
      offset = shift_key_caps.index(x)
      character = standard_key_caps[offset]
    elsif standard_key_lower.include?(x)
      offset = shift_key_lower.index(x)
      character = standard_key_lower[offset]
    end
    text_mod = text_mod + character
  end
  puts text_mod
end

caesar_cipher("Hey, this thing actually works! I can't believe it.", 5)
