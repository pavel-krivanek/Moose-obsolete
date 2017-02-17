private
exampleAtClass: class selector: selector ifAbsentPut: aBlock
	| methodDict |
	methodDict := (class isMeta 
		ifTrue: [ theMetaClassExamples ]
		ifFalse: [ theNonMetaClassExamples ]) 
			at: class theNonMetaClass name
			ifAbsentPut: [ WeakIdentityKeyDictionary new: 100 ].
	^ methodDict 
		at: selector 
		ifAbsent: [ aBlock value ifNotNil: [ :example | methodDict at: selector put: example ] ]