testing
isSupportedImplementation
	(XMLClassFinder hasClassNamed: #Mutex)
		ifFalse: [^ false].

	"MUST use the transient class on GS to avoid persisting and causing
	write conflicts"
	XMLClassFinder
		classNamed: #XMLTransientReentrantMutex
		ifPresent: [:transientReentrantMutexClass |
			transientReentrantMutexClass isSupportedImplementation
				ifTrue: [^ false]].

	^ true.