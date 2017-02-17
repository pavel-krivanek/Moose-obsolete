nesting
startElement: anElement
	self openElements addLast: anElement.
	rootElement
		ifNil: [rootElement := anElement].
	isInElement
		ifFalse: [isInElement := true].
	self hasScopedAttributes
		ifTrue: [self startScopedAttributes].