private
escapesContentEntitiesWhenWriting
	"avoid initializing config; defualt to true"
	^ configuration isNil
		or: [configuration replacesContentEntityReferences]