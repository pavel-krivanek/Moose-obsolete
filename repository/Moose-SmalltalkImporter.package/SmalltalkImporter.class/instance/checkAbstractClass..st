private utils
checkAbstractClass: class 
	(class methods contains: [ :each | each isAbstract ]) ifTrue: [ class isAbstract: true ]