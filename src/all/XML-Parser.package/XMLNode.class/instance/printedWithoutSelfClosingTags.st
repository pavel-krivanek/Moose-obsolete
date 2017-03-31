printing
printedWithoutSelfClosingTags
	^ String streamContents: [:stream | self printWithoutSelfClosingTagsOn: stream]