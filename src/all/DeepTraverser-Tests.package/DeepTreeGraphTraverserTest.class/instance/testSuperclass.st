tests
testSuperclass
	| raw stream |
	self shouldnt: [ raw := Object allSuperclasses ] raise: Error.
	self shouldnt: [ stream := Object deepCollect: #superclass ] raise: Error.
	self assert: raw asSet = stream asSet.
	
	self shouldnt: [ raw := Number allSuperclasses ] raise: Error.
	self shouldnt: [ stream := Number deepCollect: #superclass ] raise: Error.
	self assert: raw asSet = stream asSet