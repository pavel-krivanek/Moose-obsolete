testing-accessing
testPrint
	| parser |
	parser := PPParser new.
	self assert: parser printString includesSubstring: 'PPParser'.
	
	parser := PPParser named: 'choice'.
	self assert: parser printString includesSubstring: 'PPParser(choice'.
	
	parser := PPLiteralObjectParser on: $a.
	self assert: parser printString includesSubstring: $a printString.
	
	parser := PPFailingParser message: 'error'.
	self assert: parser printString includesSubstring: 'error'.
	
	parser := PPPredicateObjectParser on: [ :c | true ] message: 'error'.
	self assert: parser printString includesSubstring: 'error'