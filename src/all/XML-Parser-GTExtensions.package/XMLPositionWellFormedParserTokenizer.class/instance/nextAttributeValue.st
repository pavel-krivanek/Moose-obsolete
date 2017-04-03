tokenizing
nextAttributeValue
	| attributeValue |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	attributeValue := super nextAttributeValue.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ attributeValue.