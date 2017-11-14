recording
recordTestingMessages
	self hasParserResults addLast: self hasParser.
	self isInCDataSectionResults addLast: self isInCDataSection.
	self isInContentResults addLast: self isInContent.