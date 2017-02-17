instance creation
name: aLocalName attributes: anAssociationCollection
	"Returns a new element with the specified name and attributes.

	Both aLocalName and the attributes must not be prefixed or a namespace
	exception will be thrown.

	The anAssociationCollection argument can be a dictionary or any collection
	of associations."

	^ (self named: aLocalName)
		setAttributes: anAssociationCollection