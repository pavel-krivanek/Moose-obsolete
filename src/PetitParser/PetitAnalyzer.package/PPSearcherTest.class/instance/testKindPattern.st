testing
testKindPattern
	| result |
	searcher
		matches: (PPPattern kind: PPLiteralParser)
		do: [ :parser :answer | 
			answer
				add: parser;
				yourself ].
	result := searcher execute: $a asParser initialAnswer: OrderedCollection new.
	self assert: result size equals: 1.
	self assert: (result allSatisfy: [ :each | each class = PPLiteralObjectParser ]).
	result := searcher execute: 'abc' asParser initialAnswer: OrderedCollection new.
	self assert: result size equals: 1.
	self assert: (result allSatisfy: [ :each | each class = PPLiteralSequenceParser ]).
	result := searcher execute: #any asParser initialAnswer: OrderedCollection new.
	self assert: result isEmpty.
	result := searcher execute: $a asParser / #any asParser , $b asParser initialAnswer: OrderedCollection new.
	self assert: result size equals: 2.
	self assert: (result allSatisfy: [ :each | each class = PPLiteralObjectParser ])