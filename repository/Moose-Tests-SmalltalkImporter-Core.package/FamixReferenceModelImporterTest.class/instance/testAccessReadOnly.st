reference model access
testAccessReadOnly
	"self debug: #testAccessReadOnly"
	
	self 
		privateTestAccessingVar: #'Smalltalk::TheRoot.x'
		from: #'Smalltalk::TheRoot.x()'
		shouldBeRead: true
		hasAccessesSize: 1