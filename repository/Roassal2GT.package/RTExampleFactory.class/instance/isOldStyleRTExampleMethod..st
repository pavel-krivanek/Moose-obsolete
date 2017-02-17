testing
isOldStyleRTExampleMethod: aCompiledMethod
	^ (aCompiledMethod selector beginsWith: 'example')
		and: [ (aCompiledMethod selector endsWith: 'Icon') not ]