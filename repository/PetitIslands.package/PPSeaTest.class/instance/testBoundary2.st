testing
testBoundary2
	
	|   epilog  id p |
	"use optional boundary"
	epilog := 'end' asParser optional.
	id := self identifier.
	p := ((self sea: id), epilog) plus.

	self assert: p parse: '...foo..end...bar...end'.	
	
	self assert: result first first first = '...'.
	self assert: result first first second = 'foo'.
	self assert: result first first third = '..'.
	
	self assert: result first second = 'end'.

	self assert: result second first first = '...'.
	self assert: result second first second = 'bar'.
	self assert: result second first third = '...'.
	self assert: result second second = 'end'.