private-maintenance
removeExamplesOfMethod: aCompiledMethod for: announcement
	self removeKey: aCompiledMethod methodClass theNonMetaClass name from: theNonMetaClassExamples thenDo: [ :methodDict |
		announcement removeExample: (methodDict removeKey: aCompiledMethod selector ifAbsent: [ nil ]) ].
	self removeKey: aCompiledMethod methodClass theNonMetaClass name from: theMetaClassExamples thenDo: [ :methodDict |
		announcement removeExample: (methodDict removeKey: aCompiledMethod selector ifAbsent: [ nil ]) ]