testing
testMooseNameOfClassVariable
	self assert: TheRoot @ #TheSharedVariable equals: #'Smalltalk::TheRoot.TheSharedVariable'.	"contrary to compiled method notation we do not garanty that the class has an iv"	"we could! Now do we want? We could also have @@ for class variables."	"now the name of shared variable is always its class and not its metaclass"
	self assert: TheRoot class @ #TheSharedVariable equals: #'Smalltalk::TheRoot.TheSharedVariable'