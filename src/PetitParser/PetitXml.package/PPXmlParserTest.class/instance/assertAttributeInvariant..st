utilities
assertAttributeInvariant: aNode
	"Assert that the attributes can be properly accessed."
	
	aNode nodesDo: [ :node |
		node isElement ifTrue: [
			node attributes do: [ :attr |
				self assert: (node attributeAt: attr name localName) = attr value.
				self assert: (node attributeNodeAt: attr name localName) = attr ].
			node attributes isEmpty ifTrue: [ 
				self assert: (node attributeAt: 'foo') isNil.
				self assert: (node attributeNodeAt: 'foo') isNil ] ] ]