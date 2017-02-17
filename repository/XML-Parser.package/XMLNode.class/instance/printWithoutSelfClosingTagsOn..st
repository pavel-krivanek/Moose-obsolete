printing
printWithoutSelfClosingTagsOn: aStream
	self
		printOn: aStream
		beforeWritingDo: [:writer | writer outputsSelfClosingTags: false]