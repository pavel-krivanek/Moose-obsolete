accessing
elementsFromModel: anObject
	"Return an element that corresponds to the object provided as parameter. If none is found, then return nil"	

	| t |
	self elementFromModelCache at: anObject ifPresent: [ :v | v isCollection ifTrue: [ ^ v ] ].

	"We have this line because of a bug of the implementation of CompiledMethod>>#="
	t := (anObject class == CompiledMethod) 
				ifTrue: [ self select: [ :el | el model == anObject ] ]
				ifFalse: [ self select: [ :el | el model = anObject ] ].

	self elementFromModelCache at: anObject put: t.
	^ t