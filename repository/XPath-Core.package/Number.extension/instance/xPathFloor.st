*XPath-Core-evaluating
xPathFloor
	(self isNaN
		or: [self isInfinite])
		ifTrue: [^ Float nan]
		ifFalse: [^ self floor]