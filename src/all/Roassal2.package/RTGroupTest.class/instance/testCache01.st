tests - caches
testCache01

	| es el |
	es := RTBox elementsOn: (1 to: 5).
	self assert: es class equals: RTGroup.
	self assert: es elementFromModelCache isEmpty.
	
	el := es elementFromModel: 2.
	self assert: el class equals: RTElement.
	self assert: el model equals: 2.
	
	self deny: es elementFromModelCache isEmpty.