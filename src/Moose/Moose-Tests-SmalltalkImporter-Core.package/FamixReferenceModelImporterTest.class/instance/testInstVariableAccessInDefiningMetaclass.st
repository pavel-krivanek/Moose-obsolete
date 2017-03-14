reference model accesed
testInstVariableAccessInDefiningMetaclass
	"self debug: #testInstVariableAccessInDefiningMetaclass"
	self 
		privateTestAccessingVar: #'Smalltalk::TheRoot_class.mx'
		from: #'Smalltalk::TheRoot_class.accessInstanceVariable()'
		shouldBeRead: false
		hasAccessesSize: 1.