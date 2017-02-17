utilities
verifySystem
	Smalltalk globals allClasses
		inject: self new
		into: [ :test :class | test verifyClass: class ]