testing-parser
testParser
	| parser |
	parser := $a asParser.
	self assert: parser asParser equals: parser