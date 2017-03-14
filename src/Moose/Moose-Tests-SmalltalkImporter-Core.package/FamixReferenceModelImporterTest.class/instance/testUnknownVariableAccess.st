reference model access
testUnknownVariableAccess
	"self debug: #testUnknownVariableAccess"
	self 
		privateTestAccessingVar: #'york'
		from: #'Smalltalk::TheRoot.accessingUnknowVariable()'
		shouldBeRead: true
		hasAccessesSize: 1.