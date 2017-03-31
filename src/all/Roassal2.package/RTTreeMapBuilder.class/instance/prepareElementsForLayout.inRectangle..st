layout-utils
prepareElementsForLayout: elms inRectangle: rec
	| elementsArea viewArea area |
	elms isEmpty ifTrue: [ ^ elms ].
	elementsArea := elms inject: 0 into: [ :s :e | 
		s + (weight rtValue: e) ].
	
	viewArea := rec width * rec height.
	elms do: [ :e|
		area := ((viewArea * (weight rtValue: e))/elementsArea) asFloat.
		e attributes at: #area put: area. ].
	
	^ elms