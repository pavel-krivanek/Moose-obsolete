visiting - literals
visitNumberLiteral: aNumberLiteral
	| number |

	(number := aNumberLiteral number) isNaN
		ifTrue: [self emitAll: '(0 div 0)']
		ifFalse: [
			number isInfinite
				ifTrue: [
					number negative
						ifTrue: [self emitAll: '(-1 div 0)']
						ifFalse: [self emitAll: '(1 div 0)']]
				ifFalse: [
					number isZero
						ifTrue: [
							number isXPathNegativeZero
								ifTrue: [self emitAll: '-0.0']
								ifFalse: [self emitAll: '0.0']]
						ifFalse: [
							"otherwise, this is enough to get an acceptable
							integer or limited decimal (if the #fractionPart is
							non-zero) representation that an XPathExpressionParser
							or XPathNumberParser will understand"
							self emitAll: number asXPathString]]].

	^ aNumberLiteral.