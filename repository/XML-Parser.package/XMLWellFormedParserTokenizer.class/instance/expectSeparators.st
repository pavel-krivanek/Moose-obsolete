tokenizing - expecting
expectSeparators
	"nil understands isXMLSeparator so no nil test is needed"
	streamReader next isXMLSeparator
		ifTrue: [streamReader skipSeparators]
		ifFalse: [self errorExpectedSeparators]