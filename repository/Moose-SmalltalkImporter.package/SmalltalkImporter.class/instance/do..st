enumerating
do: aBlock 
	 
	others do: aBlock. 
	methods do: aBlock. 
	self famixClasses do: aBlock. 
	namespaces do: aBlock. 
	packages do: aBlock. 
	globals do: aBlock. 
	annotationTypes do: aBlock. 
	implicitVariables values do: [:aDictionary | 
		aDictionary do: aBlock
		].
	"Shared variables are both in class and metaclass scopes.
	To avoid duplicate refs in the moose model, we reject them from metaclass
	before adding them to the model"
	scopes keysAndValuesDo: [:cl :scope | 
		cl isMeta
			ifTrue: [	(scope values reject: [:var | var isSharedVariable]) do: aBlock ]
			ifFalse: [ scope do: aBlock ]].
