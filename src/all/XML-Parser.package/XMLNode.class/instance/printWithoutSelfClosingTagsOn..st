printing
printWithoutSelfClosingTagsOn: aStream
	"Prints XML on aStream with empty elements rendered as '<empty></empty>'
	instead of self-closing '<empty />' tags"

	self
		printOn: aStream
		beforeWritingDo: [:writer | writer outputsSelfClosingTags: false]