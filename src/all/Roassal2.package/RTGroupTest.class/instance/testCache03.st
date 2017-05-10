tests - caches
testCache03

	| es el |
	es := RTBox elementsOn: #(1 1).
	
	es elementsFromModel: 1.
	el := es elementFromModel: 1.
	self assert: el class equals: RTElement.
	self assert: el model equals: 1.
	