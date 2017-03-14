enumeration
examplesDo: aBlock
	theNonMetaClassExamples keysAndValuesDo: [ :className :methodDict |
		methodDict keysAndValuesDo: [ :selector :example | 
			aBlock value: className value: selector value: example ] ].
	theMetaClassExamples keysAndValuesDo: [ :className :methodDict |
		methodDict keysAndValuesDo: [ :selector :example | 
			aBlock value: className value: selector value: example ] ]