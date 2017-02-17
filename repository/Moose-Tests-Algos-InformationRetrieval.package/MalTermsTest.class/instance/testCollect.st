running
testCollect
	
	| collection |
	terms := MalTerms sample.
	collection := terms collect: [:each | each first].
	self
		assert:
			(collection
				equalsTo:
					'aaaaaaaabbbbbcccceefffffgiiiiiiiilllllmmmmmmnppppprrrssssssstttttttttttttttw'
						asBag).
	^collection