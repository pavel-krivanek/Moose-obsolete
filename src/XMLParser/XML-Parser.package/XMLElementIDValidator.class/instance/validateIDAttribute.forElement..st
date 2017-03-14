validating
validateIDAttribute: anAttribute forElement: anElement
	| oldSize |

	"checking size after is faster than includes test"
	oldSize := self elementsAndIDAttributes size.
	(self elementsAndIDAttributes
		at: anElement
		put: anAttribute;
		size) > oldSize
		ifFalse: [self errorMultipleIDAttributesForElement: anElement].