tests
testAllMethods
	| raw stream |
	self shouldnt: [ 
		raw := Object allSubclasses 
			flatCollect: [ :each | each methods ] ] raise: Error.
	self shouldnt: [ 
		stream := Object
			deep: #subclasses 
			flatCollect: [ :each | each methods ] ] raise: Error.
	self assert: raw asSet = stream asSet.
	
	self shouldnt: [ 
		raw := Array allSubclasses 
			flatCollect: [ :each | each methods ] ] raise: Error.
	self shouldnt: [ 
		stream := Array
			deep: #subclasses 
			flatCollect: [ :each | each methods ] ] raise: Error.
	self assert: raw asSet = stream asSet