reference model access
testAccessingFormalParameter
	"self debug: #testAccessingFormalParameter"
	self 
		privateTestAccessingVar: #'Smalltalk::TheRoot.accessingArgument:(Object).anArgument'
		from: #'Smalltalk::TheRoot.accessingArgument:(Object)'
		shouldBeRead: true
		hasAccessesSize: 1