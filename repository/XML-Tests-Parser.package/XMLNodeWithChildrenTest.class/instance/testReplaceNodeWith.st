tests
testReplaceNodeWith
	| nodeWithNodes replacements nodes firstIndex secondIndex |

	nodeWithNodes := self newNodeWithNodes.
	replacements := OrderedCollection new.
	nodeWithNodes nodes copy do: [:each |
		self assert:
			(nodeWithNodes
				replaceNode: each
				with: (replacements add: self newNode)) == replacements last].
	self assert: nodeWithNodes nodes asOrderedCollection = replacements.

	nodeWithNodes := self newNodeWithNodes.
	nodes := nodeWithNodes nodes copy.
	nodes do: [:each |
		self assert:
			(nodeWithNodes
				replaceNode: each
				with: each) == each].
	self assert: nodeWithNodes nodes = nodes.

	firstIndex := 1.
	secondIndex := nodes size.
	[firstIndex < secondIndex]
		whileTrue: [
			nodeWithNodes
				replaceNode: (nodes at: firstIndex)
				with: (nodes at: secondIndex).
			firstIndex := firstIndex + 1.
			secondIndex := secondIndex - 1].
	self assert: nodeWithNodes nodes = nodes reversed.

	self
		should: [
			nodeWithNodes
				replaceNode: nodes anyOne copy
				with: self newNode]
		raise: Error.