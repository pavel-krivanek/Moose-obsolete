reference model access
testAccessWriteOnly
	"self debug: #testAccessWriteOnly"
	self 
		privateTestAccessingVar: #'Smalltalk::TheRoot.x'
		from: #'Smalltalk::TheRoot.x:(Object)'
		shouldBeRead: false
		hasAccessesSize: 1