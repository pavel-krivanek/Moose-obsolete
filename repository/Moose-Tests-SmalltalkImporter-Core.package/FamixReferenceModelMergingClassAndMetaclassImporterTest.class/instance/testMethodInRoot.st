passed
testMethodInRoot
	"self debug: #testMethodInRoot"
	
	| theRoot |
	theRoot := self model entityNamed: #'Smalltalk::TheRoot'.
	self assert: (theRoot methods inject: false into: [:bool : method | bool or: [method name = #classSend]]).
	self assert: (theRoot methods inject: false into: [:bool : method | bool or: [method name = #singleSelfSendOnClassSide]]).
	self assert: (theRoot methods inject: false into: [:bool : method | bool or: [method name = #returningSingleSelfSend]])