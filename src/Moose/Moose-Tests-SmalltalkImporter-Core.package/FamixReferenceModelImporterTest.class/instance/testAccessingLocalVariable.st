reference model access
testAccessingLocalVariable
	"self debug: #testAccessingLocalVariable"
	self 
		privateTestAccessingVar: #'Smalltalk::TheRoot.assigningLocalVariable().tmp'
		from: #'Smalltalk::TheRoot.assigningLocalVariable()'
		shouldBeRead: false
		hasAccessesSize: 1