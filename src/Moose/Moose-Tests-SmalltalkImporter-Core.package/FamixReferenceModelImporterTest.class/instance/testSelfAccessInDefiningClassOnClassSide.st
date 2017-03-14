reference model access
testSelfAccessInDefiningClassOnClassSide
	"self debug: #testSelfAccessInDefiningClassOnClassSide"
	self 
		privateTestAccessingVar: #'Smalltalk::TheRoot_class.singleSelfSendOnClassSide().self'
		from: #'Smalltalk::TheRoot_class.singleSelfSendOnClassSide()'
		shouldBeRead: true
		hasAccessesSize: 1.