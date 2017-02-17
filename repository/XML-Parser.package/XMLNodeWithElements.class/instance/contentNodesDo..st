enumerating
contentNodesDo: aBlock
	"evaluates aBlock for all element and string node children of the receiver"

	self nodes contentNodesDo: aBlock