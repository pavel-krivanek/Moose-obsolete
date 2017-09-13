accessing
owningClass: aClass
	"The Class that owns this operation, if any."
	owningClass := OPUMLToOneLink
		on: self identity
		update: #ownedOperations
		from: owningClass
		to: aClass