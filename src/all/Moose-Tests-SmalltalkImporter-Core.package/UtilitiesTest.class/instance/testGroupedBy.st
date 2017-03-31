tests
testGroupedBy
	| res |
	res := #(1 2 3 4 5) groupedBy: [ :each | each odd ].
	self assert: (res at: true) equals: #(1 3 5).
	self assert: (res at: false) equals: #(2 4)