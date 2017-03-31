tests
testFamixFullClassNameForSmalltalkClass
	"self run: #testFamixFullClassNameForSmalltalkClass"

	"self debug: #testFamixFullClassNameForSmalltalkClass"

	self assert: self class name equals: (FAMIXNameResolver moosify: self class name) asSymbol.
	self
		assert: self class class mooseName
		equals: ('Smalltalk::' , (FAMIXNameResolver moosify: self class name) , MooseUtilities metaclassTag) asSymbol