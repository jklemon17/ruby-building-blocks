def substrings(text, params)
  text.downcase!
  found_strings={}
  params.each do |x|
    x = x.to_s.downcase
    if text.include?(x)
      x_index=0
      found_strings[x] = 0
      while text[x_index..-1].include?(x) do
        found_strings[x] += 1
        x_index = x_index + text[x_index..-1].index(x) + x.length
      end
    end
  end
  print found_strings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
