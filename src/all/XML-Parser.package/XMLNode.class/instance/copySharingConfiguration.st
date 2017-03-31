copying
copySharingConfiguration	
	"returns a deep copy of the receiver, including copies of any descendant nodes,
	but does not copy the config"

	^ self shallowCopy postCopy