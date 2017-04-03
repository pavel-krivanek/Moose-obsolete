tokenizing
nextXMLStandaloneAttributeValue
	| yesOrNo |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	yesOrNo := super nextXMLStandaloneAttributeValue.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ yesOrNo.