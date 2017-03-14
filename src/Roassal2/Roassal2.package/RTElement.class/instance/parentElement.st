accessing
parentElement
	"Return the parent element that contains me. Return nil if none.
	This attribute is set by RTNest"
	^ (self hasAttribute: #parentElement)
		ifTrue: [ self attributeAt: #parentElement ]
		ifFalse: [ nil ]