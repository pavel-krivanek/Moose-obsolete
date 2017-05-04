nesting
startElement: anElement
	self openElements addLast: anElement.
	isInElement
		ifFalse: [
			isInElement := true.
			rootElement
				ifNil: [rootElement := anElement]].
	self hasScopedAttributes
		ifTrue: [self startScopedAttributes].