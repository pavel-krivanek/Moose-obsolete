utilities
assertTypeInvariant: aNode
	"Assert that each node is one of the standard types."
	
	| types |
	aNode nodesDo: [ :node |
		types := Set new.
		#(isAttribute isComment isDoctype isDocument isElement isProcessing isText) do: [ :each |
			(node perform: each)
				ifTrue: [ types add: each ] ].
		self assert: types size = 1.
		(node isElement or: [ node isAttribute ])
			ifTrue: [ self assertNameInvariant: node name ] ]