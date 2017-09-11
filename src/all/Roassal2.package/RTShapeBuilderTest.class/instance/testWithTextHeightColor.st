tests
testWithTextHeightColor
	| b |
	b := RTMondrian new.
	b shape box
		borderColor: Color black;
		width: 40;
		height: 30;
		withText: #yourself height: 2 color: Color red.
		
	b node: 'hello'.
	b build.
	
	self assert: b view numberOfElements equals: 1.
	self assert: b view canvas numberOfShapes equals: 2.
	
	"That is weird... why 4 and not 2?"
	self assert: b view canvas shapes second height equals: b view canvas shapes second font height.