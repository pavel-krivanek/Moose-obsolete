private-accessing
addReverseLinkedExtractedType: anExtractedType
	links add: anExtractedType liveExtractType.
	anExtractedType liveExtractType  addLinkedExtractedType: self