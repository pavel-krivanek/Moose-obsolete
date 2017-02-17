*XPath-Core-evaluating
xPathDivision: aDivisor
	self isNaN
		ifTrue: [^ self].

	aDivisor isZero
		ifTrue: [
			self isZero
				ifTrue: [^ Float nan].
			"if the signs are different, the result should be negative infinity"
			(self hasSameXPathSignAs: aDivisor)
				ifTrue: [^ Float infinity]
				ifFalse: [^ Float xPathNegativeInfinity]].

	^ self / aDivisor.