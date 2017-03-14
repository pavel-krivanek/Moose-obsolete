testing
testMooseNameOfInstanceVariable
	self assert: TheRoot @ #x equals: #'Smalltalk::TheRoot.x'.	"contrary to compiled method notation we do not garanty that the class has an iv"	"we could! Now do we want"
	self assert: TheRoot @ #foo equals: #'Smalltalk::TheRoot.foo'.
	self assert: TheRoot class @ #mx equals: #'Smalltalk::TheRoot_class.mx'