accessing
removeFromModel
	^ self mooseModel ifNil: [ self ] ifNotNil: [ self mooseModel removeEntity: self ]