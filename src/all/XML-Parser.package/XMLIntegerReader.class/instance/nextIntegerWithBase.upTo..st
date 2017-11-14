reading
nextIntegerWithBase: aBase upTo: aReadLimit
	| integer maxValue maxBaseValue digitValue readLimit |

	(aBase > 1
		and: [aBase <= self class maxBase])
		ifFalse: [self errorUnsupportedBase: aBase].

	maxValue := self class maxIntegerValue.
	maxBaseValue := (maxValue / aBase) floor.
	readLimit := aReadLimit.
	[self atEnd
		or: [(readLimit notNil and: [readLimit <= 0])
			or: [(digitValue := self nextDigitWithBase: aBase) isNil]]]
		whileFalse: [
			integer
				ifNil: [integer := 0].
	
			integer > maxBaseValue
				ifTrue: [^ maxValue].
			integer := integer * aBase.

			integer > (maxValue - digitValue)
				ifTrue: [^ maxValue].
			integer := integer + digitValue.
			readLimit
				ifNotNil: [readLimit := readLimit - 1]].
	^ integer.