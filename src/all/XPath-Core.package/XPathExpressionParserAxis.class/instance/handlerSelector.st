accessing
handlerSelector
	^ handlerSelector
		ifNil: [
			self lookupAxisSpecifier.
			handlerSelector]