accessing
isDestroyOwnedObjects
	"Specifies whether objects owned by the object (via composition) are destroyed along with the object."
	^ isDestroyOwnedObjects ifNil: [ isDestroyOwnedObjects := false ]