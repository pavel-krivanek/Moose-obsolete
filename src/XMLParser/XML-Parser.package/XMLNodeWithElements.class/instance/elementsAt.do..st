enumerating
elementsAt: aName do: aBlock
	"evaluates aBlock for all element children of the receiver whose
	qualified or local names match aName"

	self nodes
		elementsAt: aName
		do: aBlock