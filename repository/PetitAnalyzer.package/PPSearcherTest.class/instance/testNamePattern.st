testing
testNamePattern
	| result |
	searcher
		matches: (PPPattern name: 'foo')
		do: [ :parser :answer | 
			answer
				add: parser;
				yourself ].
	result := searcher execute: $a asParser initialAnswer: OrderedCollection new.
	self assert: result isEmpty.
	result := searcher execute: ($a asParser name: 'foo') initialAnswer: OrderedCollection new.
	self assert: result size equals: 1.
	self assert: result first name equals: 'foo'.
	result := searcher execute: ($a asParser name: 'bar') , ($b asParser name: 'foo') initialAnswer: OrderedCollection new.
	self assert: result size equals: 1.
	self assert: result first name equals: 'foo'