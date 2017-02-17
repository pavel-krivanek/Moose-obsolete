tests
testSimpleCompositionWithTranslation02

	| v c b |
	v := RTView new.
	c := RTCompositeShape new.
	c add: (RTBox new size: 10).
	c add: (RTEllipse new size: 10).
	c vertical.
	b := c element.
	b @ RTPopup.
	b translateBy: 5 @ 5.
	v add: b.
	self assert: v canvas shapes first position equals: 5 @ 5.
	self assert: v canvas shapes second position equals: 5 @ 15