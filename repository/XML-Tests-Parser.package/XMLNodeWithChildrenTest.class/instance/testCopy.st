tests
testCopy
	"this traverses the object graph of each node and compares it with
	its copy to make sure nodes and the inst vars that should be copied
	are copied. See #copiedClasses"
	| nodeWithNodes nodeWithNodesCopy unvisitedPairs visitedPairs copiedClasses |

	super testCopy.

	nodeWithNodes := self newNodeWithNodes.
	"initialize the configuration (if it can have one)"
	nodeWithNodes configuration
		ifNotNil: [:config | config nodeFactory: XMLPluggableNodeFactory new].

	nodeWithNodesCopy := nodeWithNodes copy.
	self
		assert: nodeWithNodes printString = nodeWithNodesCopy printString;
		assert: nodeWithNodes allNodes size = nodeWithNodesCopy allNodes size.

	unvisitedPairs := Set new.
	nodeWithNodes allNodes
		with: nodeWithNodesCopy allNodes
		do: [:node :nodeCopy | unvisitedPairs add: node -> nodeCopy].

	visitedPairs := Set new.
	copiedClasses :=
		self copiedClasses collect: [:each |
			XMLClassFinder classNamed: each].
	[unvisitedPairs isEmpty]
		whileFalse: [ | pair originalObject copyObject |
			pair := unvisitedPairs remove: unvisitedPairs anyOne.
			originalObject := pair key.
			copyObject := pair value.

			self deny: originalObject == copyObject.
			visitedPairs add: pair.
			1
				to: (originalObject class instSize min: copyObject class instSize)
				do: [:i | | newPair |
					newPair := (originalObject instVarAt: i) -> (copyObject instVarAt: i).
					((visitedPairs includes: newPair)
						or: [copiedClasses noneSatisfy: [:each | newPair key isKindOf: each]])
						ifFalse: [unvisitedPairs add: newPair]]].