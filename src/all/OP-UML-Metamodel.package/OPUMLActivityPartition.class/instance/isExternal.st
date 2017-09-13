accessing
isExternal
	"Indicates whether the ActivityPartition represents an entity to which the partitioning structure does not apply."
	^ isExternal ifNil: [ isExternal := false ]