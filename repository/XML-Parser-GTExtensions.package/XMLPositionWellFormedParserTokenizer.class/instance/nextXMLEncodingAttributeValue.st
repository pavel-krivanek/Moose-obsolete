tokenizing
nextXMLEncodingAttributeValue
	| encoding |

	driver handleStartQuotedStringValuePosition: self currentPosition + 1.
	encoding := super nextXMLEncodingAttributeValue.
	driver handleEndQuotedStringValuePosition: self currentPosition.

	^ encoding.