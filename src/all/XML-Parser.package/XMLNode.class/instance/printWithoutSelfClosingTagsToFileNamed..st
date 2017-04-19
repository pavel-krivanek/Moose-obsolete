printing
printWithoutSelfClosingTagsToFileNamed: aFileName
	"Prints XML to the file aFileName with empty elements rendered
	as '<empty></empty>' instead of self-closing '<empty />' tags"

	self
		printToFileNamed: aFileName
		beforeWritingDo: [:writer | writer outputsSelfClosingTags: false]