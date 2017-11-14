tests
testCollectionStart
	| stream1 stream2 diff21 diff12 |
	self shouldnt: [ 
		stream1 := { Object }
			deep: #subclasses 
			flatCollect: [ :each | each methods ]  ] raise: Error.
	self shouldnt: [ 
		stream2 := Object
			withDeep: #subclasses 
			flatCollect: [ :each | each methods ] ] raise: Error.
	
	self deny: stream2 asSet = stream1 asSet.
	self deny: (diff21 := stream2 asSet difference: stream1 asSet) isEmpty.
	self assert: (diff12 := stream1 asSet difference: stream2 asSet) isEmpty.
	self assert: (diff21 allSatisfy: [ :cm | cm methodClass = Object ]).
	self assert: diff21 asSet = Object methods asSet