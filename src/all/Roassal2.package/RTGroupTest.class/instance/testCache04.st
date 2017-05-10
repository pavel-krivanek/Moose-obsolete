tests - caches
testCache04

	| es |
	es := RTBox elementsOn: #(1).
	self assert: (es elementsFromModel: 1) size equals: 1.
	
	es addAll: (RTBox elementsOn: #(1)). 
	self assert: (es elementsFromModel: 1) size equals: 2.