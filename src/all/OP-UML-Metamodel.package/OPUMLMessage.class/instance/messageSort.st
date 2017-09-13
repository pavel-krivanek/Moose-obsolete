accessing
messageSort
	"The sort of communication reflected by the Message."
	^ messageSort ifNil: [ messageSort := OPUMLMessageSort new synchCall ]