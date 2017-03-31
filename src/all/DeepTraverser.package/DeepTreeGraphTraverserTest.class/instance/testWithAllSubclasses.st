tests
testWithAllSubclasses
	| raw stream |
	self shouldnt: [ raw := Object withAllSubclasses ] raise: Error.
	self shouldnt: [ stream := Object withDeepCollect: #subclasses ] raise: Error.
	self assert: raw asSet = stream asSet.
	
	self shouldnt: [ raw := Number withAllSubclasses ] raise: Error.
	self shouldnt: [ stream := Number withDeepCollect: #subclasses ] raise: Error.
	self assert: raw asSet = stream asSet