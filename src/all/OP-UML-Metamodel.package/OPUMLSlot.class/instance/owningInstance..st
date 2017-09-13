accessing
owningInstance: anInstanceSpecification
	"The InstanceSpecification that owns this Slot."
	owningInstance := OPUMLToOneLink
		on: self identity
		update: #slots
		from: owningInstance
		to: anInstanceSpecification