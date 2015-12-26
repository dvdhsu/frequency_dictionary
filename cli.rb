# command line interface for the frequency dictionary
require_relative 'frequency_dictionary'

anagram_dict = FrequencyDictionary.new
f = File.open("words.txt")

f.each_line do |l|
  # add each word/line, chomping out the trailing newline
  anagram_dict.add(l.chomp)
end

while true
  print "Enter a word to lookup: "
  # chomp out newline
  word = gets.chomp
  results = anagram_dict.search word
  if results.empty?
    puts "Sorry, no results."
  else
    print "Results: "
    print anagram_dict.search word
    # newline after results
    puts
  end
end
