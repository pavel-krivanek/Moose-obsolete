public
width: aBlockOrValue
	"Set the width of all the contained shapes
	
	| c s1 s2 v |
	c := RTCompositeShape new.
	s1 := RTBox new color: Color blue; size: 5.
	s2 := RTBox new color: Color red; size: 9.
	c add: s1; add: s2.
	c width: 20.
	c vertical.
	
	v := RTView new.
	v add: (c element).
	v
	"

	self allShapes do: [ :s | (s isKindOf: RTLabel) ifFalse: [ s width: aBlockOrValue ] ]