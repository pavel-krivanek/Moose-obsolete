public - layout
horizontal
	"Set the horizontal layout in the composite
	
	For example:
	| c s1 s2 v |
	c := RTCompositeShape new.
	s1 := RTBox new color: Color blue; size: 5.
	s2 := RTBox new color: Color red; size: 9.
	c add: s1; add: s2.
	c horizontal.
	
	v := RTView new.
	v add: (c element).
	v
	"
	layout := #horizontal