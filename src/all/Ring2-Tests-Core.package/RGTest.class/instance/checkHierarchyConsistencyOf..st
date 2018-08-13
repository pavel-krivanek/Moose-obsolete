utilities
checkHierarchyConsistencyOf: anRGClass

	"prove that all relations between class, superclass, metaclass and superclass metaclass are consistent"

	self assert: (anRGClass ~~ anRGClass superclass).
	self assert: (anRGClass ~~ anRGClass metaclass).
	self assert: (anRGClass ~~ anRGClass superclass metaclass).

	self assert: (anRGClass superclass ~~ anRGClass metaclass).
	self assert: (anRGClass superclass ~~ anRGClass superclass metaclass).
	self assert: (anRGClass metaclass ~~ anRGClass superclass metaclass).

	self assert: (anRGClass superclass superclass == anRGClass superclass).
	self assert: (anRGClass superclass metaclass == anRGClass metaclass superclass).

	self assert: (anRGClass superclass metaclass superclass == anRGClass superclass metaclass).
	self assert: (anRGClass superclass metaclass metaclass == anRGClass superclass metaclass).
	
