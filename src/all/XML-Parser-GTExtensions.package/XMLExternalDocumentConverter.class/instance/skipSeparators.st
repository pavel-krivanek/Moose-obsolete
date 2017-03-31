private 
skipSeparators
	[self peek isXMLSeparator]
		whileTrue: [self next]