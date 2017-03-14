enumerating
elementsDo: aBlock
	"evaluates aBlock for all element children of the receiver"

	self nodes elementsDo: aBlock