tests
testIsRoot
	| element |

	element := self newNodeWithElements.
	self assert: element allElements first isRoot.

	element descendantElementsDo: [:each |
		self deny: each isRoot].

	(element removeNodes: element elements copy) do: [:each |
		self assert: each isRoot].