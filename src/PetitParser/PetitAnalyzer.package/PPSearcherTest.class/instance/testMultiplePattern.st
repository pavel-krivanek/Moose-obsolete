testing
testMultiplePattern
	| result |
	searcher
		matches: $a asParser
		do: [ :parser :answer | 
			answer first add: parser.
			answer ].
	searcher
		matches: PPPattern any
		do: [ :parser :answer | 
			answer second add: parser.
			answer ].
	result := searcher
		execute: $a asParser , $a asParser , $b asParser
		initialAnswer: (Array with: OrderedCollection new with: OrderedCollection new).
	self assert: result first size equals: 2.
	self assert: result first first literal equals: $a.
	self assert: result first last literal equals: $a.
	self assert: result last size equals: 2.
	self assert: result last first class equals: PPSequenceParser.
	self assert: result last last literal equals: $b