reset shape
lastHighlightedElements: elements
	lastHighlightedElements 
		ifNil: [ lastHighlightedElements := elements ]
		ifNotNil: [ lastHighlightedElements := lastHighlightedElements, elements ].
	