as yet unclassified
visitNode: aNode
	| oldNode |
	oldNode := node.
	node := aNode.
	self perform: aNode name asSymbol.

	