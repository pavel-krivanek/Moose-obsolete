*XPath-Core-evaluating
xpathCeiling
	"'The ceiling function returns the smallest (closest to negative infinity)
	number that is not less than the argument and that is an integer.'
	(The spec doesn't say how to handle NaN and infinity; LibXML2 returns NaN.)"
	(self isNaN
		or: [self isInfinite])
		ifTrue: [^ Float nan]
		ifFalse: [^ self ceiling]