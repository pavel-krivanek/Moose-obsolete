tests
testSmalltalkClassNameFromFamixClassName
	"self debug: #testSmalltalkClassNameFromFamixClassName"

	self assert: (FAMIXNameResolver smalltalkClassNameFromFamixClassName: self class name) equals: self class name.
	self
		assert: (FAMIXNameResolver soleClassNameFromFamixName: self class class mooseName)
		equals: self class absoluteName asSymbol.
	self
		assert: (FAMIXNameResolver soleClassNameFromFamixName: self class mooseName)
		equals: self class absoluteName asSymbol.
	self
		assert: (FAMIXNameResolver smalltalkClassNameFromFamixClassName: self class name , FAMIXNameResolver metaclassTag)
		equals: self class class name asSymbol.
	self
		assert: (FAMIXNameResolver smalltalkClassNameFromFamixClassName: self class class mooseName)
		equals: self class class absoluteName asSymbol