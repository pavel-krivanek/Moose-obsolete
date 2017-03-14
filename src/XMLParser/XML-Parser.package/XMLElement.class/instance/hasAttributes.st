testing
hasAttributes
	"returns true if this element has attribute"

	"optimized to avoid lazy initialization"
	attributes == nil
		ifTrue: [^ false].
	^ attributes size > 0.