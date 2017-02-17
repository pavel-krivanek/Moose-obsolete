tests - all same size
testAllSameSize01AndVertical

	| box1 box2 combo v firstShape secondShape |
	box1 := RTBox new color: Color blue trans; size: 20.
	box2 := RTBox new color: Color red trans; size: 10.

	combo:= RTCompositeShape new allOfSameSize; add: box1; add: box2; vertical.

	v := RTView new.
	v add: combo element. 
	
	self assert: v numberOfElements equals: 1.
	self assert: v canvas numberOfShapes equals: 2.
	
	firstShape := v canvas shapes first.
	secondShape := v canvas shapes second.
	self assert: firstShape position x equals: secondShape position x.
	self assert: firstShape position y < secondShape position y.

	self assert: (v canvas shapes collect: [ :s | s encompassingRectangle extent ]) asSet size equals: 1