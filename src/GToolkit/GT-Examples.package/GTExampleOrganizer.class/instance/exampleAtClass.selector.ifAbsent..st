private
exampleAtClass: class selector: selector ifAbsent: aBlock
	^ ((class isMeta 
		ifTrue: [ theMetaClassExamples ]
		ifFalse: [ theNonMetaClassExamples ]) 
			at: class theNonMetaClass name
			ifAbsentPut: [ WeakIdentityKeyDictionary new: 100 ])
				at: selector 
				ifAbsent: aBlock