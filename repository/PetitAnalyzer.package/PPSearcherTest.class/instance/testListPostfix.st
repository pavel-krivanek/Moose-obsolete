testing-lists
testListPostfix
	| result |
	searcher
		matches: PPListPattern any , $b asParser
		do: [ :parser :answer | true ].
	
	result := searcher
		execute: $a asParser , $a asParser
		initialAnswer: false.
	self deny: result.
	
	result := searcher
		execute: $a asParser , $b asParser
		initialAnswer: false.
	self assert: result.
	
	result := searcher
		execute: $b asParser , $a asParser
		initialAnswer: false.
	self deny: result.
	
	result := searcher
		execute: $b asParser , $b asParser
		initialAnswer: false.
	self assert: result.
	
	result := searcher
		execute: $a asParser , $a asParser , $a asParser
		initialAnswer: false.
	self deny: result.
	
	result := searcher
		execute: $b asParser , $a asParser , $a asParser
		initialAnswer: false.
	self deny: result.
	
	result := searcher
		execute: $a asParser , $b asParser , $a asParser
		initialAnswer: false.
	self deny: result.
	
	result := searcher
		execute: $a asParser , $a asParser , $b asParser
		initialAnswer: false.
	self assert: result.
	
	result := searcher
		execute: $b asParser , $b asParser , $a asParser
		initialAnswer: false.
	self deny: result.
	
	result := searcher
		execute: $a asParser , $b asParser , $b asParser
		initialAnswer: false.
	self assert: result.
	
	result := searcher
		execute: $b asParser , $a asParser , $b asParser
		initialAnswer: false.
	self assert: result.
	
	result := searcher
		execute: $b asParser , $b asParser , $b asParser
		initialAnswer: false.
	self assert: result