parsing
parse
	^ XMLMixedContentElementValidator
		element: element
		allowedContent:
			(DTDMixedContentEnumerationListParser on: contentModel)
				parse