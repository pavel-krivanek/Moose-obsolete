testing
testReduce
	"self debug: #testReduce"

	self assert: ((MalKontractor upTo: 4) reduce: 'hello') equals: 'hllo'.
	self assert: ((MalKontractor upTo: 3) reduce: 'hello') equals: 'hlo'.
	self assert: ((MalKontractor upTo: 3) reduce: 'hell!-o') equals: 'hlo'