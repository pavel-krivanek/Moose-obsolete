tokenizing
nextAttributeValue
	| value |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	value := super nextAttributeValue.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ value.