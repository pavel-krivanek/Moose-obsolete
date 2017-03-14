composed shape
testAutomaticLayout

	| v lbl box cs e bigElement bigElement2 |
	v := RTView new.

	lbl := RTBox new color: Color pink.
	box := RTBox new.
	cs := RTCompositeShape new.
	cs add: lbl.
	cs add: box.
	cs vertical.

	e := cs element.
	v add: e.

	bigElement := ((RTBox new size: 20; color: Color red) element).
	bigElement2 := ((RTBox new size: 20; color: Color red) element).
	v add: bigElement.
	v add: bigElement2.

	RTNest new 
		layout: RTFlowLayout new;
		on: e nest: (Array with: bigElement with: bigElement2).

	self assert: (bigElement position closeTo: (-12.0@2)).
	self assert: (bigElement2 position closeTo: (13.0@2)).