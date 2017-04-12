public
elementFromModel: anObject
	"Return an element that corresponds to the object provided as parameter. If none is found, then return nil"
	
	"We have this line because of a bug of the implementation of CompiledMethod>>#="
	(anObject class == CompiledMethod) ifTrue: [ ^ self detect: [ :el | el model == anObject ] ifNone: [ nil ] ].

	^ self detect: [ :el | el model = anObject ] ifNone: [ nil ]