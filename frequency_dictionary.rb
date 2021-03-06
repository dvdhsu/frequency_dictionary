# stores a list of words, as well as their character frequencies
class FrequencyDictionary
  attr_reader :dict

  def initialize
    @dict = Hash.new
  end

  # add a word to the dictionary
  def add(word)
    # calculate the character frequencies
    freq = to_hash word
    # then map the word to it
    @dict[word] = freq
  end

  # search for words with the same character frequencies
  def search(word)
    results = []
    freq = to_hash word

    @dict.each do |k, v|
      # frequencies are the same, and it's not the word we're searching for
      if v == freq and not k == word
        results.push k
      end
    end

    return results
  end

  private

  def to_hash(word)
    # default num of chars is 0
    freq = Hash.new(0)

    word.each_char do |c|
      freq[c] += 1
    end

    return freq
  end
end
