visiting - literals
visitNumberLiteral: aNumberLiteral
	| number |

	"don't use #asXPathString here, because we don't want the XPath string
	representation, but its self-evaluating Smalltalk representation, so NaN
	is rendered as something like 'Float nan' and not 'NaN', and don't just
	use #asString because older implementations aren't self-evaluating for
	nan and inifinity"
	(number := aNumberLiteral number) isNaN
		ifTrue: [self emitNumberLiteral: 'Float nan']
		ifFalse: [
			number isInfinite
				ifTrue: [
					number negative
						ifTrue: [self emitNumberLiteral: 'Float xPathNegativeInfinity']
						ifFalse: [self emitNumberLiteral: 'Float infinity']]
				ifFalse: [
					number isZero
						ifTrue: [
							number isXPathNegativeZero
								ifTrue: [
									self emitNumberLiteral: 'Float xPathNegativeZero']
								ifFalse: [self emitNumberLiteral: '0.0']]
						ifFalse: [self emitNumberLiteral: number asString]]].
	^ aNumberLiteral.