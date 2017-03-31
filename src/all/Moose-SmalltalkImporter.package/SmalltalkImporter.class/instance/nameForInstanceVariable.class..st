private utils
nameForInstanceVariable: name class: aClass
	
    (importingContext shouldMergeClassAndMetaclass) 
		and: [aClass isMeta ifTrue: [ ^ self CIVString, name]].
	^ name
					
	