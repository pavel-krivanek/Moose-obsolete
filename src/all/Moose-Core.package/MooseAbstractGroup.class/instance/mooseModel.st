accessing
mooseModel
	^ self ifEmpty: [ nil ] ifNotEmpty: [ self anyOne mooseModel ]