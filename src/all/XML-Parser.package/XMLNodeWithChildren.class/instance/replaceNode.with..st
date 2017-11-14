accessing
replaceNode: aNode with: aReplacementNode
	"replaces aNode in the receiver with aReplacementNode, or if aReplacementNode
	is already a child of the receiver, just swaps their locations"

	| firstIndex secondIndex |

	firstIndex := self nodes indexOf: aNode.
	(secondIndex := self nodes indexOf: aReplacementNode) > 0
		ifTrue: [
			self nodes
				swap: firstIndex
				with: secondIndex]
		ifFalse: [
			self nodes
				at: firstIndex
				put: aReplacementNode].
	^ aReplacementNode.