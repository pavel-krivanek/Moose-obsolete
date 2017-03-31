enumerating
descendantElementsNamed: aName do: aBlock
	"evaluates all descendant elements whose qualified or local names
	match aName with aBlock"

	self descendantElementsDo: [:each |
		(each isNamed: aName)
			ifTrue: [aBlock value: each]]