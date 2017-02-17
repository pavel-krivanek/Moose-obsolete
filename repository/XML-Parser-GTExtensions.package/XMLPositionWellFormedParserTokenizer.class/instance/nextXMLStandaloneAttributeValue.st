tokenizing
nextXMLStandaloneAttributeValue
	| yesOrNo |

	driver handleStartQuotedStringValuePosition: self currentPosition + 1.
	yesOrNo := super nextXMLStandaloneAttributeValue.
	driver handleEndQuotedStringValuePosition: self currentPosition.

	^ yesOrNo.