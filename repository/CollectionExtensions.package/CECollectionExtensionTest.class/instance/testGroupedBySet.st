groupedBy
testGroupedBySet
	"self debug: #testGroupedBySet"
	
	| res |
	res := #(1 2 3 4 5 3 4 5) asSet groupedBy: [:each | each odd].
	self assert: (res at: true) = #(1 3 5) asSet.
	self assert: (res at: false) = #(2 4) asSet