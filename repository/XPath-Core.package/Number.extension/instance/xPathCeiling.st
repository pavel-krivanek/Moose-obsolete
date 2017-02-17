*XPath-Core-evaluating
xPathCeiling
	(self isNaN
		or: [self isInfinite])
		ifTrue: [^ Float nan]
		ifFalse: [^ self ceiling]