tokenizing
nextXMLVersionAttributeValue
	| version |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	version := super nextXMLVersionAttributeValue.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ version.