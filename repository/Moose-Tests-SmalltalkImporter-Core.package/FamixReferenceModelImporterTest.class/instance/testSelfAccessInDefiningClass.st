reference model access
testSelfAccessInDefiningClass
	"self debug: #testSelfAccessInDefiningClass"
	
	"TheRoot>>singleSelfSend
		self accessSharedVariableFromTheInstanceSide"
	
	self 
		privateTestAccessingVar: #'Smalltalk::TheRoot.singleSelfSend().self'
		from: #'Smalltalk::TheRoot.singleSelfSend()'
		shouldBeRead: true
		hasAccessesSize: 1.