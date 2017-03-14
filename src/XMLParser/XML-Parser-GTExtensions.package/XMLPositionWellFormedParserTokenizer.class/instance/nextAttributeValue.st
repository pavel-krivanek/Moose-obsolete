tokenizing
nextAttributeValue
	| attributeValue |

	driver handleStartQuotedStringValuePosition: self currentPosition + 1.
	attributeValue := super nextAttributeValue.
	driver handleEndQuotedStringValuePosition: self currentPosition.

	^ attributeValue.