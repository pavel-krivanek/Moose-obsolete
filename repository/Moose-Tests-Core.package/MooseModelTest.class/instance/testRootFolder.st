tests
testRootFolder

	model := MooseModel new.
	self assert: model rootFolder equals: (Smalltalk imageDirectory asFileReference / 'src' / (model name) ).
	