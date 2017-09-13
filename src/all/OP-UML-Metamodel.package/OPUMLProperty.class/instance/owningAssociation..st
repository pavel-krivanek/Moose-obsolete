accessing
owningAssociation: anAssociation
	"The owning association of this property, if any."
	owningAssociation := OPUMLToOneLink
		on: self identity
		update: #ownedEnds
		from: owningAssociation
		to: anAssociation