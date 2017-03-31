as yet unclassified
forTmpOffset: offset ofCompiledMethod: aCompiledMethod inClass: aClass
	^(self basicNew initialize)
		tempOffset: offset;
		ivarClass: aClass;
		compiledMethod: aCompiledMethod;
		yourself