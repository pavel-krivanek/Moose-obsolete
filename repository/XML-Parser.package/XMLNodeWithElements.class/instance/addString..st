adding
addString: aString
	"Adds a new string node for aString or just appends aString to the
	last node if it's a coalescing string node (not CDATA).

	Returns the new string node or the string node appeneded to."

	| lastNode |

	(self hasChildren
		and: [(lastNode := self lastNode) isCoalescingStringNode])
		ifTrue: [^ lastNode append: aString]
		ifFalse: [^ self addNode: (self nodeFactory newStringNode: aString)]