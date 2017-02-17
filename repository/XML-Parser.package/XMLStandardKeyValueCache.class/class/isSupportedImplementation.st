testing
isSupportedImplementation
	"need some type of reentrant mutex"
	XMLReentrantMutex hasSupportedImplementation
		ifFalse: [^ false].

	"MUST use the transient class on GS to avoid persisting and causing
	write conflicts"
	XMLClassFinder
		classNamed: #XMLTransientKeyValueCache
		ifPresent: [:transientKeyValueCacheClass |
			transientKeyValueCacheClass isSupportedImplementation
				ifTrue: [^ false]].

	^ true.