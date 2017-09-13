accessing
owner: anElement
	"The Element that owns this Element."
	owner := OPUMLToOneLink
		on: self identity
		update: #ownedElements
		from: owner
		to: anElement