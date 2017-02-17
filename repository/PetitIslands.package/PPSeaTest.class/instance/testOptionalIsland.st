testing
testOptionalIsland
	
	| island parser   |
	
	island := self sea: ('a' asParser / 'b' asParser optional).
	parser := island, 'c' asParser.
	
	self assert: parser parse: '....a....b...c'.
	self assert: result first second = 'a'.
	self assert: result second = 'c'.
	
	self assert: parser parse: '....d....b...c'.
	self assert: result first second = 'b'.
	self assert: result second = 'c'.
	
	self assert: parser parse: '....d....d...c'.
	self assert: result first second = nil.
	self assert: result second = 'c'.

	self assert: parser parse: '...c'.