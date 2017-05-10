tests - caches
testCache02

	| es el els |
	es := RTBox elementsOn: #(1 1).
	
	el := es elementFromModel: 1.
	self assert: el class equals: RTElement.
	self assert: el model equals: 1.
	
	els := es elementsFromModel: 1.
	self assert: els class equals: RTGroup.
	self assert: els size equals: 2