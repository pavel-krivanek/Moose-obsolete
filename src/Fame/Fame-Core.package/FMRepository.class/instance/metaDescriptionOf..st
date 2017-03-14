accessing-meta
metaDescriptionOf: element 

	^(element isKindOf: FMRuntimeElement) 
		ifTrue: [ element description ]
		ifFalse: [ metamodel descriptionOf: element class ]