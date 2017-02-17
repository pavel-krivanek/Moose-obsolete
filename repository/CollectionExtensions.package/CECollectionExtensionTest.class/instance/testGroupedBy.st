groupedBy
testGroupedBy
	"self debug: #testGroupedBy"
	
	| res |
	res := #(1 2 3 4 5) asOrderedCollection 
				groupedBy: [:each | each odd].
	self assert:   (res at: true) = #(1 3 5) asOrderedCollection.
	self assert: (res at: false) = #(2 4) asOrderedCollection