*Famix-Extensions
parentTypeIsStub
	^ self parentType ifNotNil: [ :e | e isStub ] ifNil: [ true ]