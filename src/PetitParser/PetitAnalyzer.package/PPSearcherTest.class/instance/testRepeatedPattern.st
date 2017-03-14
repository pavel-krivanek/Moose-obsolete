testing
testRepeatedPattern
	| pattern result |
	searcher
		matches: (pattern := PPPattern any) , pattern
		do: [ :parser :answer | 
			answer
				add: parser;
				yourself ].
	result := searcher execute: $a asParser , $b asParser initialAnswer: OrderedCollection new.
	self assert: result isEmpty.
	result := searcher execute: $a asParser , $a asParser initialAnswer: OrderedCollection new.
	self assert: result size equals: 1.
	result := searcher execute: $a asParser , ($a asParser , $b asParser) initialAnswer: OrderedCollection new.
	self assert: result isEmpty.
	result := searcher execute: $b asParser , ($a asParser , $a asParser) initialAnswer: OrderedCollection new.
	self assert: result size equals: 1