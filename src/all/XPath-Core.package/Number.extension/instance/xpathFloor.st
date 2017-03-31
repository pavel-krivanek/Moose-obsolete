*XPath-Core-evaluating
xpathFloor
	"'The floor function returns the largest (closest to positive infinity)
	number that is not greater than the argument and that is an integer.'
	(The spec doesn't say how to handle NaN and infinity; LibXML2 returns NaN.)"
	(self isNaN
		or: [self isInfinite])
		ifTrue: [^ Float nan]
		ifFalse: [^ self floor]