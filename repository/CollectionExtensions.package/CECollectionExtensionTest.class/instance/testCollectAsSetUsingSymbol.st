collect as set
testCollectAsSetUsingSymbol
	"self debug: #testCollectAsSetUsingSymbol"
	
	self assert: ((#() collectAsSet: #odd) = Set new).
	self assert: (#(1 2 3 4 5 6) collectAsSet: #odd)
					 = (Set with: true with: false).
	self assert: (#(1 3 5 7 9 11) collectAsSet: #odd) 
					= (Set with: true).