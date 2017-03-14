enumerating
stringNodesDo: aBlock
	"evaluates each string node child of the receiver with aBlock"

	self nodes stringNodesDo: aBlock