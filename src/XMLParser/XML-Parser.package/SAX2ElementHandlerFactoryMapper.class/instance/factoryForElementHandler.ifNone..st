accessing
factoryForElementHandler: anElementHandler ifNone: aBlock
	^ anElementHandler elementHandlerFactory
		ifNil: [
			self elementHandlerFactory
				ifNil: [aBlock value]]