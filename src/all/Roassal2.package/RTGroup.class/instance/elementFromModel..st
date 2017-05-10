accessing
elementFromModel: anObject
	"Return an element that corresponds to the object provided as parameter. If none is found, then return nil"
	
	| t |
	self elementFromModelCache at: anObject ifPresent: [ :v |
		v isCollection ifFalse: [ ^ v ] ].

	"We have this line because of a bug of the implementation of CompiledMethod>>#="
	t := (anObject class == CompiledMethod) 
				ifTrue: [ self detect: [ :el | el model == anObject ] ifNone: [ nil ] ]
				ifFalse: [ self detect: [ :el | el model = anObject ] ifNone: [ nil ] ].

	self elementFromModelCache at: anObject put: t.
	^ t