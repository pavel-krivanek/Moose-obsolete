tests
testNumberOfStatementsWithNoErrors
	"self debug: #testNumberOfStatementsWithNoErrors"

	| classMethod |
	classMethod := self model entityNamed: #'Smalltalk::TheRoot.classSend()'.
	self assert: classMethod numberOfStatements equals: 1