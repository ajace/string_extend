class String
	
	# Scan for vowels, ignoring case
	def vowels
		scan(/[aeiou]/i)
	end

	# Split text into sentences based on period \. followed by any whitespace \s*
	def sentences
		gsub(/\n|\r/, ' ').split(/\.\s*/)
	end

	# Split sentences into words, even words with \' or \-
	def word_split
		scan(/\w[\w\'\-]*/)
	end

end