This repository contains:
  * a frequency dictionary,
  * a command line interface to test the dictionary with,
  * a set of English words,
  * and some specs to ensure everything works.

The frequency dictionary has two public methods: `add`, and `search`. Both take a string as an argument. The former adds a word to the frequency dictionary, and the latter takes a word, and finds words which have the same frequencies of characters (i.e. an anagram). It's worth noting that the frequency dictionary is case sensitive. To make it case insensitive, we could add a normalization step when counting the frequencies, by downcasing before counting.

The command line interface reads in the words from `words.txt`, and inserts them all into the dictionary. After that, it asks for words from the user, and prints out words which are anagrams. To exit, use CTRL-C.

`words.txt` was provided, and is just a set of English words.

The spec just tests the frequency dictionary. I think this is better than testing the dictionary + set of English words. Tests for classes should be data-independent, and easy to reason about, just by looking at the spec file.

The spec itself is pretty simple: it adds three words (all of which are anagrams of each other), and then tries searching for words. It assures that a) anagrams are found, b) the word itself is not found, and c) that which is not an anagram is not found.

I've chosen to keep the dictionary in a separate class, since this makes it easy to maintain, easy to test, and easy to extend. Maintaining the code should be simple, since the code is concise, and concerns are separated. Testing is simple, as specified above. Adding new features (such as case-sensitivity) is easy as well. Extending (by using this API elsewhere) is very simple, since the class can be used anywhere -- be it in the CLI, or in a Rails application.
