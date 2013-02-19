require 'test/unit'

class TestStringExtend < Test::Unit::TestCase
	def test_vowels
		assert_equal(["e", "o"], "Hello".vowels)
	end

	def test_sentences
		assert_equal(["a", "b", "c d", "e f g"], "a. b. c d. e f g.".sentences)
		test_text = %q{Hello. This is a test
		of sentence separation. This is the end
		of the test.}
		assert_equal("This is the end of the test", test_text.sentences[2])
	end

	def test_word_split
		assert_equal(["Hello", "World"], "Hello World".word_split)
	end
end