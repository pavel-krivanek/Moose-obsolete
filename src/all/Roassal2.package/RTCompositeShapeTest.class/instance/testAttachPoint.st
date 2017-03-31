tests
testAttachPoint

	| c l head attachPoint |
	c := RTCompositeShape new.
	l := RTLine new.
	c add: l.
	head := RTSimpleArrowHead new.
	c add: head.
	attachPoint := RTHorizontalAttachPoint instance.
	c attachPoint: attachPoint.
	self assert: l attachPoint equals: attachPoint.
	self assert: head attachPoint equals: attachPoint.