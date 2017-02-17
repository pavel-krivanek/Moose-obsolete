testing
isExampleMethod: aCompiledMethod
	^ (super isExampleMethod: aCompiledMethod)
		or: [ self isOldStyleRTExampleMethod: aCompiledMethod ]