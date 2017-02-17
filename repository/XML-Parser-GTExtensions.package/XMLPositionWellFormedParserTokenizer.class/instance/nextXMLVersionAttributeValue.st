tokenizing
nextXMLVersionAttributeValue
	| version |

	driver handleStartQuotedStringValuePosition: self currentPosition + 1.
	version := super nextXMLVersionAttributeValue.
	driver handleEndQuotedStringValuePosition: self currentPosition.

	^ version.