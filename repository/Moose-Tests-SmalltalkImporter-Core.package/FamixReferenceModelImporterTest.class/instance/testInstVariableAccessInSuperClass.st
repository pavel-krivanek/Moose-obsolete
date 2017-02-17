reference model accesed
testInstVariableAccessInSuperClass
	self 
		privateTestAccessingVar: (TheRoot mooseNameOf: #x)
		from: #'Smalltalk::SubRootLevelOne.accessSuperclassInstVar()'
		shouldBeRead: true
		hasAccessesSize: 1.

	self 
		privateTestAccessingVar: (TheRoot mooseNameOf: #y)
		from: (SubRootLevelOne>>#accessSuperclassInstVar) mooseName
		shouldBeRead: true
		hasAccessesSize: 1.