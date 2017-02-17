utilities
assertParentInvariant: anXmlNode
	"Assert that the children-parent relationship is properly set."
	
	anXmlNode nodesDo: [ :node |
		node children 
			do: [ :child | self assert: child parent == node ].
		node attributes
			do: [ :child | self assert: child parent == node ].
		node isDocument 
			ifTrue: [ self assert: node parent isNil ] ]