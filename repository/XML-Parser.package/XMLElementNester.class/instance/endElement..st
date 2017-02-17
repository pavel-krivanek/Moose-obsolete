nesting
endElement: anElement
	(self openElements
		removeLast;
		size) > 0
		ifFalse: [
			isInElement := hasExternalRootElement.
			wasRootElementEnded := hasExternalRootElement not].
	self hasScopedAttributes
		ifTrue: [self endScopedAttributes].