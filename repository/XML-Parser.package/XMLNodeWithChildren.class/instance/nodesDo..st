enumerating
nodesDo: aBlock
	"evaluates aBlock for all child nodes of the receiver"

	self nodes do: aBlock