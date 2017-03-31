DSL
attribute: attributeName with: variant
	"Adds an attribute with primitive value or array, or with given body."

	client beginAttribute: attributeName.
	variant isBlock
		ifTrue: [ variant value ]
		ifFalse: [
			variant isArray
				ifTrue: [ variant do: [ :each |
					client primitive: each ] ]
				ifFalse: [ 
					client primitive: variant ]].
		
	client endAttribute: attributeName.