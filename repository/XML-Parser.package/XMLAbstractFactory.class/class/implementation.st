accessing
implementation
	^ implementation
		ifNil: [
			"avoid assigning to the class inst var unless an implementation
			was found to minimize write conflicts on GS"
			self findSupportedImplementation
				ifNil: [self errorNoSupportedImplementation]
				ifNotNil: [:supportedImplementation |
					implementation := supportedImplementation].
			implementation]