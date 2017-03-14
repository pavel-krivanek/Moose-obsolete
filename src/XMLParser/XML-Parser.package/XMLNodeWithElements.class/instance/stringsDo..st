enumerating
stringsDo: aBlock
	"evaluates each string of each string node child of the receiver with
	aBlock"

	self nodes stringsDo: aBlock