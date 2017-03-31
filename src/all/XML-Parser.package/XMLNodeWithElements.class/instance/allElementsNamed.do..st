enumerating
allElementsNamed: aName do: aBlock
	"evaluates all descendant elements (and the receiver if it's an
	element) whose qualified or local names match aName with aBlock"

	self allElementsDo: [:each |
		(each isNamed: aName)
			ifTrue: [aBlock value: each]]