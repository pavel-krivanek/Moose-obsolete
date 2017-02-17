testing
testRemoveOne
	self assert: ((MalKontractor upTo: 3) removeOne: 'hello') equals: 'hllo'.
	self assert: ((MalKontractor upTo: 3) removeOne: 'hllo') equals: 'hlo'