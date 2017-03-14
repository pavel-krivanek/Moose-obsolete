testing
testClassPattern
	| result |
	searcher
		matches: (PPPattern class: PPLiteralObjectParser)
		do: [ :parser :answer | 
			answer
				add: parser;
				yourself ].
	result := searcher execute: $a asParser initialAnswer: OrderedCollection new.
	self assert: result size equals: 1.
	self assert: (result allSatisfy: [ :each | each class = PPLiteralObjectParser ]).
	result := searcher execute: 'abc' asParser initialAnswer: OrderedCollection new.
	self assert: result isEmpty.
	result := searcher execute: #any asParser initialAnswer: OrderedCollection new.
	self assert: result isEmpty.
	result := searcher execute: $a asParser / #any asParser , $b asParser initialAnswer: OrderedCollection new.
	self assert: result size equals: 2.
	self assert: (result allSatisfy: [ :each | each class = PPLiteralObjectParser ])