collect as set
testCollectAsSet
	"self debug: #testCollectAsSet"
	
	self assert: ((#() collectAsSet: [:each | each odd]) = Set new).
	self assert: (#(1 2 3 4 5 6) collectAsSet: [:each | each odd])
					 = (Set with: true with: false).
	self assert: (#(1 3 5 7 9 11) collectAsSet: [:each | each odd]) 
					= (Set with: true).
					
	self assert: (#(1 2 3 4 5 4 3 2 1) collectAsSet: [:each | each]) = (1 to: 5) asSet.
	
	