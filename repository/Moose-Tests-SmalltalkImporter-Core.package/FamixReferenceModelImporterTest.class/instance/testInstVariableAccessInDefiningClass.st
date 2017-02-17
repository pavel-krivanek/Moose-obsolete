reference model accesed
testInstVariableAccessInDefiningClass
	"self debug: #testInstVariableAccessInDefiningClass"
	
	self 
		privateTestAccessingVar: #'Smalltalk::SubRootLevelOne.k'
		from: #'Smalltalk::SubRootLevelOne.accessSuperclassInstVar()'
		shouldBeRead: false
		hasAccessesSize: 1.