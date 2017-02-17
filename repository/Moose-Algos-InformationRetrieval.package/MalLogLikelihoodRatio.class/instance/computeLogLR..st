computing
computeLogLR: aString
	
	| k1 k2 n1 n2 p1 p2 p |
	k1 := terms1 occurrencesOf: aString.
	k2 := terms2 occurrencesOf: aString.
	n1 := terms1 fastSize.
	n2 := terms2 fastSize.
	p1 := k1 / n1 asFloat.
	p2 := k2 / n2 asFloat.
	p := (k1 + k2) / (n1 + n2) asFloat.
	^(p1 - p2) sign * 2
		*
			((self logL: p1 and: k1 and: n1) + (self logL: p2 and: k2 and: n2)
				- (self logL: p and: k1 and: n1) - (self logL: p and: k2 and: n2))