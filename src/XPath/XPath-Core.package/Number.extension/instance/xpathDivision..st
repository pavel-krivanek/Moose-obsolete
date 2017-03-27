*XPath-Core-evaluating
xpathDivision: aDivisor
	self isNaN
		ifTrue: [^ self].

	aDivisor isZero
		ifTrue: [
			self isZero
				ifTrue: [^ Float nan].
			"if the signs are different, the result should be negative infinity"
			(self hasSameXPathSignAs: aDivisor)
				ifTrue: [^ Float infinity]
				ifFalse: [^ Float xpathNegativeInfinity]].

	^ self / aDivisor.