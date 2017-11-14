tests
testWithAllMethods
	| raw stream |
	self shouldnt: [ 
		raw := Object withAllSubclasses 
			flatCollect: [ :each | each methods ] ] raise: Error.
	self shouldnt: [ 
		stream := Object
			withDeep: #subclasses 
			flatCollect: [ :each | each methods ] ] raise: Error.
	self assert: raw asSet = stream asSet.
	
	self shouldnt: [ 
		raw := Array withAllSubclasses 
			flatCollect: [ :each | each methods ] ] raise: Error.
	self shouldnt: [ 
		stream := Array
			withDeep: #subclasses 
			flatCollect: [ :each | each methods ] ] raise: Error.
	self assert: raw asSet = stream asSet