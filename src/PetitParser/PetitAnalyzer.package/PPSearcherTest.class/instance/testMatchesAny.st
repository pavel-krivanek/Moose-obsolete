testing
testMatchesAny
	| result |
	searcher
		matchesAnyOf: (Array with: $a asParser with: $b asParser)
		do: [ :parser :answer | 
			answer
				add: parser;
				yourself ].
	result := searcher execute: $a asParser , $b asParser , $c asParser initialAnswer: OrderedCollection new.
	self assert: result size equals: 2.
	self assert: result first literal equals: $a.
	self assert: result last literal equals: $b