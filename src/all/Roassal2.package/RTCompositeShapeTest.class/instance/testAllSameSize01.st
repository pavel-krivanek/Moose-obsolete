tests - all same size
testAllSameSize01

	| box1 box2 combo v |
	box1 := RTBox new color: Color blue trans; size: 20.
	box2 := RTBox new color: Color red trans; size: 10.

	combo:= RTCompositeShape new allOfSameSize; add: box1; add: box2.

	v := RTView new.
	v add: combo element. 
	
	self assert: v numberOfElements equals: 1.
	self assert: v canvas numberOfShapes equals: 2.
	
	self assert: (v canvas shapes collect: #encompassingRectangle) asSet size equals: 1