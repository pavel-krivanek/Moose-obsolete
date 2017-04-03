tokenizing
nextXMLEncodingAttributeValue
	| encoding |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	encoding := super nextXMLEncodingAttributeValue.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ encoding.