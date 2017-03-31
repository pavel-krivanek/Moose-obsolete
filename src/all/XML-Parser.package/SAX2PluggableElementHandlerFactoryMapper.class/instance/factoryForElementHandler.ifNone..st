accessing
factoryForElementHandler: anElementHandler ifNone: aBlock
	"optimization to skip any unneeded hash lookups"
	elementHandlerFactoryMap size > 0
		ifTrue: [
			^ elementHandlerFactoryMap
				at: anElementHandler class
				ifAbsent: [
					super
						factoryForElementHandler: anElementHandler
						ifNone: aBlock]]
		ifFalse: [
			^ super
				factoryForElementHandler: anElementHandler
				ifNone: aBlock]