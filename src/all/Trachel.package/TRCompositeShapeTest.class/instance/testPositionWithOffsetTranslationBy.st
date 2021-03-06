testing translation
testPositionWithOffsetTranslationBy

	| s |
	s := TRCompositeShape new.
	s addShape: box1. 
	s addShape: box2 translateBy: 5 @ 4.
	canvas addShape: s.
	
	self assert: box1 position equals: 0 @ 0.
	self assert: box2 position equals: 5 @ 4.
	
	s translateBy: 10 @ 5.
	self assert: s position equals: 15 @ 9.
	self assert: box1 position equals:  10 @ 5.
	self assert: box2 position equals:  15 @ 9
