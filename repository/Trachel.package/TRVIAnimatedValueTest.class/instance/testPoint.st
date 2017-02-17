tests
testPoint
	| t1 t2 p |
	t1 := TRVIAnimatedValue new.
	t2 := TRVIAnimatedValue new.
	p := t1 @ t2.
	self assert: p class equals: TRVIAnimatedPoint.