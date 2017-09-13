accessing
owningClass: aClass
	"The Class that owns this Property, if any."
	owningClass := OPUMLToOneLink
		on: self identity
		update: #ownedAttributes
		from: owningClass
		to: aClass