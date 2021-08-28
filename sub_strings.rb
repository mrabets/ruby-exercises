def substrings(s, dictionary)
  hh = Hash.new(0)
  s.downcase!
  dictionary.each { |x| hh[x] = s.scan(x).size if s.include?(x) }
  hh
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)