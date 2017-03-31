testing
testAnyPattern
	| result |
	searcher
		matches: PPPattern any
		do: [ :parser :answer | 
			answer
				add: parser;
				yourself ].
	result := searcher execute: $a asParser initialAnswer: OrderedCollection new.
	self assert: result size equals: 1.
	result := searcher execute: $a asParser star initialAnswer: OrderedCollection new.
	self assert: result size equals: 2.
	result := searcher execute: $a asParser , $b asParser initialAnswer: OrderedCollection new.
	self assert: result size equals: 3