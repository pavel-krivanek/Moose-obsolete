*XPath-Core-evaluating
xPathRounded
	| rounded |

	(self isNaN
		or: [self isZero
			or: [self isInfinite]])
		ifTrue: [^ self].

	((rounded := (self + 0.5) xPathFloor) isZero
		and: [self negative])
		ifTrue: [^ Float xPathNegativeZero]
		ifFalse: [^ rounded].