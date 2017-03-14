tests
testAllSubclasses
	| raw stream |
	self shouldnt: [ raw := Object allSubclasses ] raise: Error.
	self shouldnt: [ stream := Object deepCollect: #subclasses ] raise: Error.
	self assert: raw asSet = stream asSet.
	
	self shouldnt: [ raw := Number allSubclasses ] raise: Error.
	self shouldnt: [ stream := Number deepCollect: #subclasses ] raise: Error.
	self assert: raw asSet = stream asSet