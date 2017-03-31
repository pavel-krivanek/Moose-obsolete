printing
printWithoutSelfClosingTagsToFileNamed: aFileName
	self
		printToFileNamed: aFileName
		beforeWritingDo: [:writer | writer outputsSelfClosingTags: false]