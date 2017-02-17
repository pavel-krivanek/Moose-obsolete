passed
testAttributInRoot
	"self debug: #testAttributInRoot"
	| theRoot |
	theRoot := self model entityNamed: #'Smalltalk::TheRoot'.
	self assert: (theRoot attributes inject: false into: [:bool : method | bool or: [method name = #y]]).
	self assert: (theRoot attributes inject: false into: [:bool : method | bool or: [method name = #z]]).
	self assert: (theRoot attributes inject: false into: [:bool : method | bool or: [method name = #'CIV#mz']])