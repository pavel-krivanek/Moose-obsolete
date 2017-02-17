border color
testIfBorderColor

	| e |
	builder 
		box;
		if: true borderColor: Color red.
		
	self assert: (builder borderColor rtValue: RTElement new) equals: Color red.
	e := builder elementOn: 42.
	
	self assert: (e shape borderColorFor: e) equals: Color red