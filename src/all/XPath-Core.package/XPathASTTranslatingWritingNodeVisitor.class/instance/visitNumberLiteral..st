visiting - literals
visitNumberLiteral: aNumberLiteral
	| number |

	"can't just use #asXPathString here because we don't want the XPath string
	representation, but a self-evaluating Smalltalk representation, so NaN
	is rendered like 'Float nan' and not 'NaN', and can't just use #asString
	either because older implementations aren't self-evaluating for NaN and
	inifinity"
	(number := aNumberLiteral number) isNaN
		ifTrue: [self emitNumberLiteral: 'Float nan']
		ifFalse: [
			number isInfinite
				ifTrue: [
					number negative
						ifTrue: [self emitNumberLiteral: 'Float xpathNegativeInfinity']
						ifFalse: [self emitNumberLiteral: 'Float infinity']]
				ifFalse: [
					number isZero
						ifTrue: [
							number isXPathNegativeZero
								ifTrue: [
									self emitNumberLiteral: 'Float xpathNegativeZero']
								ifFalse: [self emitNumberLiteral: '0.0']]
						ifFalse: [
							"#asString should be OK for all others"
							self emitNumberLiteral: number asString]]].
	^ aNumberLiteral.