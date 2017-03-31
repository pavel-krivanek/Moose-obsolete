visitor-doubleDispatching
visitNodes: aCollection
	aCollection do: [:each | each acceptVisitor: self]