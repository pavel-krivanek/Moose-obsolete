groupedBy
testGroupedByArray
	"self debug: #testGroupedByArray"
	
	| res |
	res := #(1 2 3 4 5) groupedBy: [:each | each odd].
	self assert:   (res at: true) = #(1 3 5).
	self assert: (res at: false) = #(2 4)