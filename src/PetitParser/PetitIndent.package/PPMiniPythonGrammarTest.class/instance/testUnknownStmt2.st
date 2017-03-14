test-grammar
testUnknownStmt2
	parser := self parserInstanceFor: #unknownStmt.
	
	self assert: parser parse: 'return isinstance(other, Message) and self.level == other.level and \
            self.message == other.message'.