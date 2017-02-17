running
basicRun

	self Document.
	self atEnd ifFalse: [ ^self syntaxError ]