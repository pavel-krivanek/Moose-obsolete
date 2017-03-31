*XPath-Core-evaluating
xpathRounded
	| rounded |

	(self isNaN
		or: [self isZero
			or: [self isInfinite]])
		ifTrue: [^ self].

	((rounded := (self + 0.5) xpathFloor) isZero
		and: [self negative])
		ifTrue: [^ Float xpathNegativeZero]
		ifFalse: [^ rounded].