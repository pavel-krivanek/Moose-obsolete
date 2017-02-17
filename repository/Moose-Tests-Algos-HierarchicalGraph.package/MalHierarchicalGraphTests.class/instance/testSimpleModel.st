tests
testSimpleModel
	| root |
	root := self setupSimpleTopDownModel.	"We have four levels"
	self assert: root children size equals: 3.
	self assert: root children anyOne children size equals: 3.
	self assert: root children anyOne children anyOne children size equals: 3.
	self assert: root children anyOne children anyOne children anyOne children size equals: 3.
	self assert: root children anyOne children anyOne children anyOne children anyOne children size equals: 0.	"We have a hierarchy chain"
	self assert: root children anyOne children anyOne children anyOne parent parent parent equals: root.	"root is root"
	self assert: root parent equals: nil