as yet unclassified
testHasPoint
	self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) hasPoint: 1 @ 3)
   		equals: true.
	self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) hasPoint: 2 @ 1)
   		equals: true.
	self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) hasPoint: 0 @ 0)
   		equals: false.