public
menuFor: aBuilder
	self buildSubmenu: aBuilder.
	
	self inspectAllExamples: aBuilder.
	
	self buildSeparator.
	
	self browseAllExamplesWithProblems: aBuilder.
	self browseAllExamplesIgnoredByTests: aBuilder.
	
	self buildSeparator.
	
	self toggleNotifications: aBuilder.
	
	self buildSeparator.
	
	self resetAllExamples: aBuilder