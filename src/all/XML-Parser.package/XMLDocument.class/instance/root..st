accessing
root: anElement
	"Replaces the current root element (if any) with anElement,
	leaving all other nodes in place"

	anElement isElement
		ifFalse: [self errorCannotHaveNonElementRoot].

	self firstElement
		ifNil: [self addNode: anElement]
		ifNotNil: [:firstElement |
			self
				replaceNode: firstElement
				with: anElement].