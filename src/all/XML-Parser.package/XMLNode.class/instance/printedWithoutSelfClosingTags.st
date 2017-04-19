printing
printedWithoutSelfClosingTags
	"Prints XML with empty elements rendered as '<empty></empty>' instead
	of self-closing '<empty />' tags"

	^ String streamContents: [:stream | self printWithoutSelfClosingTagsOn: stream]