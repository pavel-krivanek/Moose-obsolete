as yet unclassified
testCutWith
	self
		assert: ((GLine a: -20  b: 30  c: -500 ) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 )) v1
		equals: (-15@(20/3)).
	self
		assert: ((GLine a: -20  b: 30  c: -500 ) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 )) v2
		equals: ((-5/2)@15).	
	self
		assert: ((GLine a: -30  b: 50  c: -900 ) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 )) v1 
		equals: (-15 @ 9) .	
	self
		assert: ((GLine a: -30  b: 50  c: -900 ) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 )) v2 
		equals: (-5 @ 15).
	self
		assert: ((GLine a: 0  b: 1  c: -25 ) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 ))
		equals: nil.	