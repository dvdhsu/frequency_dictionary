require "minitest/autorun"
require_relative "../frequency_dictionary"

class TestFrequencyDictionary < Minitest::Test
  def setup
    @dict = FrequencyDictionary.new
    @dict.add "cab"
    @dict.add "abc"
    @dict.add "cba"
  end

  def test_finding_anagram
    results = @dict.search "abc"
    assert_includes(results, "cab")
    assert_includes(results, "cba")
  end

  def test_excludes_itself
    # is not itself included in the search results
    results = @dict.search "abc"
    refute_includes(results, "abc")
  end

  def test_finding_nonexistent_anagram
    assert_equal [], @dict.search("def")
  end
end
