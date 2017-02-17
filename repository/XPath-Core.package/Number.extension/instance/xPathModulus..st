*XPath-Core-evaluating
xPathModulus: aDivisor
	| modulus |

	"XPath modulus must take the sign of the receiver unlike #// which
	takes the sign of the argument"
	modulus := self - ((self xPathDivision: aDivisor) xPathFloor * aDivisor).
	(modulus hasSameXPathSignAs: self)
		ifTrue: [^ modulus]
		ifFalse: [^ modulus negated].