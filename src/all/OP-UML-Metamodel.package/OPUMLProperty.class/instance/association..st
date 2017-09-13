accessing
association: anAssociation
	"The Association of which this Property is a member, if any."
	association := OPUMLToOneLink
		on: self identity
		update: #memberEnds
		from: association
		to: anAssociation