=begin
  
It must start with a hashtag (#).

All words must have their first 
letter capitalized.

If the final result is longer than 
140 chars it must return false.

If the input or the result is an
 empty string it must return false
=end

def generateHashtag(str)
  return false if str.empty?
  
  hashtag = str.split(/\s+/).map(&:capitalize).join
  return false if !(hashtag =~ /[a-z]/i) || hashtag.length + 1 > 140
  
  '#' + hashtag
end

puts generateHashtag("Do We have A Hashtag")
puts generateHashtag("Codewars")
