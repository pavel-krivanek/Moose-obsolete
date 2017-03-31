running
testIncludesTrue
	
	sw := MalStopwords fromString: 'and the super of a'.
	self assert: (sw includes: 'a').
	self assert: (sw includes: 'of').
	self assert: (sw includes: 'and').
	self assert: (sw includes: 'the').
	self assert: (sw includes: 'super').
	^sw