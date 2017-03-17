accessing
mooseModel
	^ self ifEmpty: [ nil ] ifNotEmpty: [ self first mooseModel ]