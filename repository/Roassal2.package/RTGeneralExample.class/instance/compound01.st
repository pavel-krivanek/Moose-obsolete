compound elements
compound01
	<gtExample>
	| c es v |
	c := (RTBox new color: Color red trans) compoundElement.
	c @ RTDraggable.
	c @ RTPopup.
	es := (RTBox new color: Color white) compoundElementsOn: (1 to: 10).
	c addAll: es @ RTPopup.
	
	es do: [ :ee | 
		| g |
		g := RTSlider new.
		g build.
		ee addAll: g view elements.
	].
	
	c layout grid.
	
	v := RTView new.
	v add: c.
	^ v